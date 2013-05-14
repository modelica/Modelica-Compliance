within ModelicaCompliance.Arrays.Operations.Arithmetic;

model ArrayMultiplication3
  extends Icons.TestCase;
  

  Real m[3] = 3 * {1, 2, 3}; 
equation
  assert(Util.compareReal(m[1], 3.0), "The element of m[1] must be 3.0");
  assert(Util.compareReal(m[2], 6.0), "The element of m[2] must be 6.0");
  assert(Util.compareReal(m[3], 9.0), "The element of m[3] must be 9.0");
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests array multiplication.</html>"));
end ArrayMultiplication3;
