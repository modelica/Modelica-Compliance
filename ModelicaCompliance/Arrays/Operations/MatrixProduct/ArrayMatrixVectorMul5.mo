within ModelicaCompliance.Arrays.Operations.MatrixProduct;

model ArrayMatrixVectorMul5
  extends Icons.TestCase;
  
  
  Real x[3, 0], y[0], z[3];
equation 
  z = x * y;
  
  assert(Util.compareReal(z[1], 0.0), "The element of z[1] must be 0.0");
  assert(Util.compareReal(z[2], 0.0), "The element of z[2] must be 0.0");
  assert(Util.compareReal(z[3], 0.0), "The element of z[3] must be 0.0");
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that matrix by vector multiplication of arrays with numeric elements is possible.</html>"));
end ArrayMatrixVectorMul5;
