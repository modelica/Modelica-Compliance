within ModelicaCompliance.Functions.Calls;

model CallMultiResultsAssignment
  extends Icons.TestCase;

  function multipleResults
    input Real x;
    input Real y;
    output Real r1;
    output Real r2;
    output Real r3;
  algorithm
    r1 := x + y;
    r2 := x * y;
    r3 := x - y;
  end multipleResults;

    Real a, b, c;
  algorithm
   (a, b, c) := multipleResults(2.0, 1.0);
   assert(Util.compareReal(a, 3.0), "a was not set correctly.");
   assert(Util.compareReal(b, 2.0), "b was not set correctly.");
   assert(Util.compareReal(c, 1.0), "c was not set correctly.");
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"12.4", "12.4.3"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html> Tests assignment to a function call with multiple outputs.</html>"));

end CallMultiResultsAssignment;

