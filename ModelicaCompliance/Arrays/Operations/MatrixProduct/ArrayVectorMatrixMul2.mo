within ModelicaCompliance.Arrays.Operations.MatrixProduct;

model ArrayVectorMatrixMul2
  extends Icons.TestCase;
  
  
  Real  r[3] = {1, 2, 3} * [1, 1, 1; 2, 2, 2; 3, 3, 3];
equation 
  assert(Util.compareReal(r[1], 14.0), "The element of r[1] must be 14.0");
  assert(Util.compareReal(r[2], 14.0), "The element of r[2] must be 14.0");
  assert(Util.compareReal(r[3], 14.0), "The element of r[3] must be 14.0");
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"10.6.7"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that vector by matrix multiplication of arrays with numeric elements is possible.</html>"));
end ArrayVectorMatrixMul2;
