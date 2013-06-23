within ModelicaCompliance.Arrays.Operations.Arithmetic;

model ArrayEWMultiplication1
  extends Icons.TestCase;
  
  Real r;
equation
  r = 2 .*4;
  
  assert(Util.compareReal(r, 8.0), "The value of r must be 8.0");
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"10.6.3"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that elementwise multiplication of two numeric scalars is possible.</html>"));
end ArrayEWMultiplication1;
