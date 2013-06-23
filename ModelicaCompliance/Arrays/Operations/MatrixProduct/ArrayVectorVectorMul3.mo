within ModelicaCompliance.Arrays.Operations.MatrixProduct;

model ArrayVectorVectorMul3
  extends Icons.TestCase;
  
  
  Real x[0], y[0], r;
equation 
  r = x * y;
  
  assert(Util.compareReal(r, 0.0), "The value of r must be 0.0");
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"10.6.7"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that vector by vector multiplication of arrays with numeric elements is possible.</html>"));
end ArrayVectorVectorMul3;
