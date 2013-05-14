within ModelicaCompliance.Arrays.Operations.Arithmetic;

model ArrayEWSubtraction1
  extends Icons.TestCase;
  

  Real r;
equation
  r = 2 .-4;
  assert(Util.compareReal(r, -2.0), "The value of r must be -2.0");
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that elementwise subtraction of two numeric scalars is possible.</html>"));
end ArrayEWSubtraction1;
