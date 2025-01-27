within ModelicaCompliance.Functions.ExternalObjects;

model ExternalObjectTableInFunction
  extends Icons.TestCase;

  class MyTable
    // Note that this is a copy of ModelicaCompliance.Functions.ExternalObjects.ExternalObjectTable
    // In real code it should just be a common implementation,
    //  but these tests are designed to be self-contained
    extends ExternalObject;

    function constructor
      input Real[:] vals;
      output MyTable outTable;

      external "C" outTable = initMyTable(vals, size(vals, 1));
      annotation(Include="#include \"ExtObjInit.c\"");
    end constructor;

    function destructor
      input MyTable inTable;

      external "C" closeMyTable(inTable) ;
      annotation(Include="#include \"ExtObjClose.c\"");
    end destructor;
  end MyTable;

  function interpolateMyTable
    input MyTable interpolTable;
    input Real u;
    output Real y;

    external "C" y=interpolateMyTable(interpolTable,u) ;
    annotation(Include="#include \"ExtObjInterpolate.c\"");
  end interpolateMyTable;

  function interpolateMyTableFunc
    input Real[:] vals;
    input Real val;
    output Real y;
    protected
      MyTable myTable = MyTable(vals);
    algorithm
      y := interpolateMyTable(myTable, val);
  end interpolateMyTableFunc;

  parameter Real[:] myTable = {5, 3, 1, 9, 6};
  Real y = interpolateMyTableFunc(myTable, 0.7);
  Real z = interpolateMyTableFunc(myTable, 3.5);
equation
  assert(Util.compareReal(y, 3.6), "y was not set correctly.");
  assert(Util.compareReal(z, 7.5), "z was not set correctly.");

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"12.9.7"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests the use of an external object as a local function variable.</html>"));
end ExternalObjectTableInFunction;
