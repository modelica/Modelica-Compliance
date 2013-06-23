within ModelicaCompliance.Arrays.Operations.MatrixProduct;

model ArrayMatrixMatrixMul3
  extends Icons.TestCase;
  
  
  Real  r[3,3] = [4; 5; 6] * [1, 2, 3];
equation 
  assert(Util.compareReal(r[1, 1], 4.0), "The element of r[1, 1] must be 4.0");
  assert(Util.compareReal(r[1, 2], 8.0), "The element of r[1, 2] must be 8.0");
  assert(Util.compareReal(r[1, 3], 12.0), "The element of r[1, 3] must be 12.0");
  assert(Util.compareReal(r[2, 1], 5.0), "The element of r[2, 1] must be 5.0");
  assert(Util.compareReal(r[2, 2], 10.0), "The element of r[2, 2] must be 10.0");
  assert(Util.compareReal(r[2, 3], 15.0), "The element of r[2, 3] must be 15.0");
  assert(Util.compareReal(r[3, 1], 6.0), "The element of r[3, 1] must be 6.0");
  assert(Util.compareReal(r[3, 2], 12.0), "The element of r[3, 2] must be 12.0");
  assert(Util.compareReal(r[3, 3], 18.0), "The element of r[3, 3] must be 18.0");
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"10.6.7"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that matrix by matrix multiplication of arrays with numeric elements is possible.</html>"));
end ArrayMatrixMatrixMul3;
