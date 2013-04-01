within ModelicaCompliance.Operators.Arithmetic;

model SubtractReal
  extends Icons.TestCase;

  constant Real r = 4711.2 - 1138.3;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that it's possible to subtract real numbers.</html>"));
end SubtractReal;
