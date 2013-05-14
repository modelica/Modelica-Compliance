within ModelicaCompliance.Arrays.Operations.MatrixProduct;

model ArrayVectorVectorMul1
  extends Icons.TestCase;
  
  
  Real  r;
equation 
  r = {1, 2, 3} * {2, 2, 2};
  assert(Util.compareReal(r, 12.0), "The value of r must be 12.0");
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that vector by vector multiplication of arrays with numeric elements is possible.</html>"));
end ArrayVectorVectorMul1;
