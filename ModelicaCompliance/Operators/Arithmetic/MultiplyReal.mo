within ModelicaCompliance.Operators.Arithmetic;

model MultiplyReal
  extends Icons.TestCase;

  constant Real r = 4711.2 * 1138.3;
equation
  assert(Util.compareReal(r, 5362758.96), "The approximate value of the scalar variable r can not be considered as equal to 5362758.96");
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"3.4"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that multiplication of real scalars is possible.</html>"));
end MultiplyReal;
