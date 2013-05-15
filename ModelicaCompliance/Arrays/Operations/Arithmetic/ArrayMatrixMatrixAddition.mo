within ModelicaCompliance.Arrays.Operations.Arithmetic;

model ArrayMatrixMatrixAddition
  extends Icons.TestCase; 
  
  Real add3[2, 2] = {{1, 1}, {2, 2}} + {{1, 2}, {3, 4}};
equation
  assert(Util.compareReal(add3[1,1], 2.0), "The element of add3[1,1] must be 2.0");
  assert(Util.compareReal(add3[1,2], 3.0), "The element of add3[1,2] must be 3.0");
  assert(Util.compareReal(add3[2,1], 5.0), "The element of add3[2,1] must be 5.0");
  assert(Util.compareReal(add3[2,2], 6.0), "The element of add3[2,2] must be 6.0");
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that addition of two matrices is posisble.</html>"));
end ArrayMatrixMatrixAddition;
