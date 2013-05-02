within ModelicaCompliance.Operators.Mathematical;

model AbsBooleanIncorrect
  extends Icons.TestCase;

  Boolean b;
equation
  b = abs(b);

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that the built-in abs function is not allowed for boolean expression.</html>"));
end AbsBooleanIncorrect;
