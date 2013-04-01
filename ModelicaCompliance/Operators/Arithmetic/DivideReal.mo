within ModelicaCompliance.Operators.Arithmetic;

model DivideReal
  extends Icons.TestCase;

  constant Real r = 23424.5 / 1234.78;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that it's possible to divide real numbers.</html>"));
end DivideReal;
