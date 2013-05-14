within ModelicaCompliance.Arrays.Operations.MatrixProduct;

model ArrayMatrixMatrixMul6
  extends Icons.TestCase;
  
  
  Real x[4, 0], y[0, 4], z[4, 4];
equation 
  z = x * y;
  assert(Util.compareReal(z[1, 1], 0.0), "The element of r[1, 1] must be 0.0");
  assert(Util.compareReal(z[1, 2], 0.0), "The element of r[1, 2] must be 0.0");
  assert(Util.compareReal(z[1, 3], 0.0), "The element of r[1, 3] must be 0.0");
  assert(Util.compareReal(z[1, 4], 0.0), "The element of r[1, 4] must be 0.0");
  assert(Util.compareReal(z[2, 1], 0.0), "The element of r[2, 1] must be 0.0");
  assert(Util.compareReal(z[2, 2], 0.0), "The element of r[2, 2] must be 0.0");
  assert(Util.compareReal(z[2, 3], 0.0), "The element of r[2, 3] must be 0.0");
  assert(Util.compareReal(z[2, 4], 0.0), "The element of r[2, 4] must be 0.0");
  assert(Util.compareReal(z[3, 1], 0.0), "The element of r[3, 1] must be 0.0");
  assert(Util.compareReal(z[3, 2], 0.0), "The element of r[3, 2] must be 0.0");
  assert(Util.compareReal(z[3, 3], 0.0), "The element of r[3, 3] must be 0.0");
  assert(Util.compareReal(z[3, 4], 0.0), "The element of r[3, 4] must be 0.0");
  assert(Util.compareReal(z[4, 1], 0.0), "The element of r[4, 1] must be 0.0");
  assert(Util.compareReal(z[4, 2], 0.0), "The element of r[4, 2] must be 0.0");
  assert(Util.compareReal(z[4, 3], 0.0), "The element of r[4, 3] must be 0.0");
  assert(Util.compareReal(z[4, 4], 0.0), "The element of r[4, 4] must be 0.0");
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that matrix by matrix multiplication of arrays with numeric elements is possible.</html>"));
end ArrayMatrixMatrixMul6;
