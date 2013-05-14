within ModelicaCompliance.Arrays.Operations.Arithmetic;

model ArrayVectorVectorAddition
  extends Icons.TestCase;
  
  
  Real add3[3] = {{1, 2, 3} + {4, 5, 6}};
equation
  assert(Util.compareReal(add3[1], 5.0), "The element of add3[1] must be 5.0");
  assert(Util.compareReal(add3[2], 7.0), "The element of add3[2] must be 7.0");
  assert(Util.compareReal(add3[3], 9.0), "The element of add3[5] must be 9.0");
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that addition of two vectors is posisble.</html>"));
end ArrayVectorVectorAddition;
