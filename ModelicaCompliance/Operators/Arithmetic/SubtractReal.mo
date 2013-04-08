within ModelicaCompliance.Operators.Arithmetic;

model SubtractReal
  extends Icons.TestCase;

  constant Real r = 4711.2 - 1138.3;
equation
  assert(r == 3572.8999999999996, "The value of the scalar variable r should be 3572.8999999999996");
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that subtraction of real scalars is possible.</html>"));
end SubtractReal;
