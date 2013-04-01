within ModelicaCompliance.Operators.Arithmetic;

model ExponentReal
  extends Icons.TestCase;

  constant Real r = 2.3 ^ 9.5;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that it's possible to exponentiate Real.</html>"));
end ExponentReal;
