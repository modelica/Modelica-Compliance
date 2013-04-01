within ModelicaCompliance.Operators.Arithmetic;

model ExponentIntegers
  extends Icons.TestCase;

  constant Integer i = 8 ^ 3;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that it's possible to exponentiate integers.</html>"));
end ExponentIntegers;
