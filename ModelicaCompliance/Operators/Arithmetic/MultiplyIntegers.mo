within ModelicaCompliance.Operators.Arithmetic;

model MultiplyIntegers
  extends Icons.TestCase;

  constant Integer i = 4711 * 1138;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that it's possible to multiply integer numbers.</html>"));
end MultiplyIntegers;
