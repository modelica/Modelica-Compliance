within ModelicaCompliance.Arrays.Operations.MatrixProduct;

model ArrayVectorMatrixVectorMul1
  extends Icons.TestCase;
  
  
  Real  r = {1, 2, 3} * {{1, 1, 1}, {2, 2, 2}, {3, 3, 3}} * {1, 2, 3} ;
equation 
  assert(Util.compareReal(r, 84.0), "The value of r must be 84.0");
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that vector-matrix-vector multiplication of arrays with numeric elements is possible.</html>"));
end ArrayVectorMatrixVectorMul1;
