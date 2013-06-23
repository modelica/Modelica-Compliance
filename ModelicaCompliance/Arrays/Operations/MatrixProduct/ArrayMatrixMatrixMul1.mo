within ModelicaCompliance.Arrays.Operations.MatrixProduct;

model ArrayMatrixMatrixMul1
  extends Icons.TestCase;
  
  
  Real  r[3, 3] = {{1, 1, 1}, {2, 2, 2}, {3, 3, 3}} * {{1, 2, 3}, {4, 5, 6}, {2, 1, 2}} ;
equation 
  assert(Util.compareReal(r[1, 1], 7.0), "The element of r[1, 1] must be 7.0");
  assert(Util.compareReal(r[1, 2], 8.0), "The element of r[1, 2] must be 8.0");
  assert(Util.compareReal(r[1, 3], 11.0), "The element of r[1, 3] must be 11.0");
  assert(Util.compareReal(r[2, 1], 14.0), "The element of r[2, 1] must be 14.0");
  assert(Util.compareReal(r[2, 2], 16.0), "The element of r[2, 2] must be 16.0");
  assert(Util.compareReal(r[2, 3], 22.0), "The element of r[2, 3] must be 22.0");
  assert(Util.compareReal(r[3, 1], 21.0), "The element of r[3, 1] must be 21.0");
  assert(Util.compareReal(r[3, 2], 24.0), "The element of r[3, 2] must be 24.0");
  assert(Util.compareReal(r[3, 3], 33.0), "The element of r[3, 3] must be 33.0");
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"10.6.7"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that matrix by matrix multiplication of arrays with numeric elements is possible.</html>"));
end ArrayMatrixMatrixMul1;
