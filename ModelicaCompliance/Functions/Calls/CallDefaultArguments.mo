within ModelicaCompliance.Functions.Calls;

model CallDefaultArguments
  extends Icons.TestCase;

  function multipleResults
    input Real x = 10;
    input Real y = 10;
    output Real r1;
    output Real r2;
    output Real r3;
  algorithm
    r1 := x + y;
    r2 := x * y;
    r3 := x - y;
  end multipleResults;

    Real a, b, c;
  equation
   (a, b, c) = multipleResults(20);
   assert(Util.compareReal(a, 30.0), "a was not set correctly.");
   assert(Util.compareReal(b, 200.0), "b was not set correctly.");
   assert(Util.compareReal(c, 10.0), "c was not set correctly.");
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"12.4", "12.4.1"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html> Tests that slots that are unfilled with arguments are filled with the corresponding default value of the function definition.</html>"));

end CallDefaultArguments;

