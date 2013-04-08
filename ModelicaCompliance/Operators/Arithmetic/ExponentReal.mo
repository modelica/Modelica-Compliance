within ModelicaCompliance.Operators.Arithmetic;

model ExponentReal
  extends Icons.TestCase;

  constant Real r = 2.3 ^ 9.5;
equation
  assert(r == 2731.5832575191735, "The value of the scalar variable r should be 2731.5832575191735");
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that exponentiation of real scalars is possible.</html>"));
end ExponentReal;
