within ModelicaCompliance.Arrays.Operations.MatrixProduct;

model ArrayVectorMatrixMul5
  extends Icons.TestCase;
  
  
  Real x[0], y[0, 4], z[4];
equation 
  z = x * y;
  
  assert(Util.compareReal(z[1], 0.0), "The element of z[1] must be 0.0");
  assert(Util.compareReal(z[2], 0.0), "The element of z[2] must be 0.0");
  assert(Util.compareReal(z[3], 0.0), "The element of z[3] must be 0.0");
  assert(Util.compareReal(z[4], 0.0), "The element of z[4] must be 0.0");
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that vector by matrix multiplication of arrays with numeric elements is possible.</html>"));
end ArrayVectorMatrixMul5;
