within ModelicaCompliance.Operators.Mathematical;

model SignBooleanIncorrect
  extends Icons.TestCase;

  Boolean b1;
equation
  b1 = sign(true);

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that the built-in sign function is not allowed for boolean expression.</html>"));
end SignBooleanIncorrect;
