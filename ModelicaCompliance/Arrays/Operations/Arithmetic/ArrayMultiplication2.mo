within ModelicaCompliance.Arrays.Operations.Arithmetic;

model ArrayMultiplication2
  extends Icons.TestCase;
  
  Real m[3] = {1, 2, 3} * 2; 
equation
  assert(Util.compareReal(m[1], 2.0), "The element of m[1] must be 2.0");
  assert(Util.compareReal(m[2], 4.0), "The element of m[2] must be 4.0");
  assert(Util.compareReal(m[3], 6.0), "The element of m[3] must be 6.0");
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"10.6.3"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests elementwise array multiplication.</html>"));
end ArrayMultiplication2;
