within ModelicaCompliance.Arrays.Operations.Arithmetic;

model ArrayEWSubtraction3
  extends Icons.TestCase;
  
  Real[2] r;
equation
  r = {2,3}.-5;
  
  assert(Util.compareReal(r[1], -3.0), "The element of r[1] must be -3.0");
  assert(Util.compareReal(r[2], -2.0), "The element of r[2] must be -2.0");
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that elementwise subtraction of numeric array and scalar is possible.</html>"));
end ArrayEWSubtraction3;
