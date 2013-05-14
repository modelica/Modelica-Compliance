within ModelicaCompliance.Arrays.Operations.MatrixProduct;

model ArrayMatrixMatrixMul4
  extends Icons.TestCase;
  
  
  Real  r[1, 1] = [4, 5, 6] * [4; 5; 6];   
equation 
  assert(Util.compareReal(r[1, 1], 77.0), "The element of r[1, 1] must be 77.0");
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that matrix by matrix multiplication of arrays with numeric elements is possible.</html>"));
end ArrayMatrixMatrixMul4;
