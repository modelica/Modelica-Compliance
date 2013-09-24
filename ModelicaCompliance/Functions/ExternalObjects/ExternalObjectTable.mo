within ModelicaCompliance.Functions.ExternalObjects;

model ExternalObjectTable
  extends Icons.TestCase;

  class MyTable
    extends ExternalObject;

    function constructor
      input String fileName = "";
      input String tableName = "";
      input Real[:] vals = {1, 2, 3};
      output MyTable outTable;

      external "C" outTable = initMyTable(fileName, tableName, vals, size(vals, 1));
      annotation(Include="#include \"ExtObj.c\"");
    end constructor;

    function destructor
      input MyTable inTable;

      external "C" closeMyTable(inTable) ;
      annotation(Include="#include \"ExtObj.c\"");
    end destructor;
  end MyTable;

  function interpolateMyTable
    input MyTable interpolTable;
    input Real u;
    output Real y;

    external "C" y=interpolateMyTable(interpolTable,u) ;
  end interpolateMyTable;

  MyTable myTable = MyTable("modelica://ModelicaCompliance/Resources/Data/Tables/testTables.txt", "table1", {1, 2, 3});
  Real y = interpolateMyTable(myTable, 1.0);
equation
  assert(Util.compareReal(y, 4.0), "y was not set correctly.");

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"12.9.7"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests the use of an external object to implement a table.</html>"));
end ExternalObjectTable;
