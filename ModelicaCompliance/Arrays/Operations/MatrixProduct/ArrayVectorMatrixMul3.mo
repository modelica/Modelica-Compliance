within ModelicaCompliance.Arrays.Operations.MatrixProduct;

model ArrayVectorMatrixMul3
  extends Icons.TestCase;
  
  
  Real  r[1] = {1, 2, 3} * [4;5;6];
equation 
  assert(Util.compareReal(r[1], 32.0), "The element of r[1] must be 32.0");
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that vector by matrix multiplication of arrays with numeric elements is possible.</html>"));
end ArrayVectorMatrixMul3;
