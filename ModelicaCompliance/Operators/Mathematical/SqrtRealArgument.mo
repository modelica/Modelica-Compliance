within ModelicaCompliance.Operators.Mathematical;

model SqrtRealArgument
  extends Icons.TestCase;

  Real r;
equation
  r = sqrt(9.8596);
  
  assert(Util.compareReal(r, 3.14), "The value of sqrt(9.8596) was not evaluated correctly.");

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that the built-in sqrt function can handle Real arguments.</html>"));
end SqrtRealArgument;
