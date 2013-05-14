within ModelicaCompliance.Arrays.Operations.MatrixProduct;

model ArrayMatrixMatrixMul2
  extends Icons.TestCase;
  
  
  Real r[2, 2] = [1, 2; 3, 4] * [1, 2; 2, 1]; 
equation 
  assert(Util.compareReal(r[1, 1], 5.0), "The element of r[1, 1] must be 5.0");
  assert(Util.compareReal(r[1, 2], 4.0), "The element of r[1, 2] must be 4.0");
  assert(Util.compareReal(r[2, 1], 11.0), "The element of r[2, 1] must be 11.0");
  assert(Util.compareReal(r[2, 2], 10.0), "The element of r[2, 2] must be 10.0");
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that matrix by matrix multiplication of arrays with numeric elements is possible.</html>"));
end ArrayMatrixMatrixMul2;
