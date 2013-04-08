within ModelicaCompliance.Operators.Arithmetic;

model MultiplyReal
  extends Icons.TestCase;

  constant Real r = 4711.2 * 1138.3;
equation
  assert(r == 5362758.96, "The value of the scalar variable r should be 5362758.96");
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that multiplication of real scalars is possible.</html>"));
end MultiplyReal;
