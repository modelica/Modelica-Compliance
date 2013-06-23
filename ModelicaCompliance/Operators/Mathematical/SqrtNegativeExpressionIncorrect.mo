within ModelicaCompliance.Operators.Mathematical;

model SqrtNegativeExpressionIncorrect
  extends Icons.TestCase;

  Real r1;
equation
  r1 = sqrt(-25);

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"3.7.1"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that the built-in sqrt function is not allowed for negative expression.</html>"));
end SqrtNegativeExpressionIncorrect;
