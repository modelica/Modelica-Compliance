within ModelicaCompliance.Arrays.Operations.MatrixProduct;

model ArrayMatrixVectorMul2
  extends Icons.TestCase;
  
  
  Real  r[3] = [1, 1, 1; 2, 2, 2; 3, 3, 3] * {1, 2, 3} ;
equation 
  assert(Util.compareReal(r[1], 6.0), "The element of r[1] must be 6.0");
  assert(Util.compareReal(r[2], 12.0), "The element of r[2] must be 12.0");
  assert(Util.compareReal(r[3], 18.0), "The element of r[3] must be 18.0");
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that matrix by vector multiplication of arrays with numeric elements is possible.</html>"));
end ArrayMatrixVectorMul2;
