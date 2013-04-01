within ModelicaCompliance.Operators.Arithmetic;

model DivideIntegers
  extends Icons.TestCase;

  constant Integer i = 4000 / 100;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that it's possible to divide integer numbers.</html>"));
end DivideIntegers;
