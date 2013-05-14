within ModelicaCompliance.Arrays.Operations.MatrixProduct;

model ArrayMatrixVectorMul4
  extends Icons.TestCase;
  
  
  Real  r[1] = {{4, 5, 6}} * {1, 2, 3};
equation 
  assert(Util.compareReal(r[1], 32.0), "The element of r[1] must be 32.0");
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that vector by matrix multiplication of arrays with numeric elements is possible.</html>"));
end ArrayMatrixVectorMul4;
