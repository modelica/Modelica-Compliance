within ModelicaCompliance.Operators.Arithmetic;

model AddReal
  extends Icons.TestCase;

  constant Real r = 4711.2 + 1138.3;
equation
  assert(r == 5849.5, "The value of the scalar variable r should be 5849.5");
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that to addition real scalars is possible.</html>"));
end AddReal;
