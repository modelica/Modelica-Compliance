within ModelicaCompliance.Operators.Mathematical;

model SqrtIntegerArgument
  extends Icons.TestCase;

  Real r;
equation
  r = sqrt(225);
  
  assert(Util.compareReal(r, 15.0), "The value of sqrt(225) was not evaluated correctly.");

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"3.7.1"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that the built-in sqrt function can handle Integer arguments.</html>"));
end SqrtIntegerArgument;
