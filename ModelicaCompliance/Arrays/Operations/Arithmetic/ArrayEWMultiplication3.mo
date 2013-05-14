within ModelicaCompliance.Arrays.Operations.Arithmetic;

model ArrayEWMultiplication3
  extends Icons.TestCase;
  

  Real[2] r;
equation
  r = {2,3}.*5;
  assert(Util.compareReal(r[1], 10.0), "The element of r[1] must be 10.0");
  assert(Util.compareReal(r[2], 15.0), "The element of r[2] must be 15.0");
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that elementwise multiplication of numeric array by scalar is possible.</html>"));
end ArrayEWMultiplication3;
