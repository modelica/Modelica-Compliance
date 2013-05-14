within ModelicaCompliance.Arrays.Operations.Arithmetic;

model ArrayConcatenation1
  extends Icons.TestCase;
  
  
  Real[5] c = cat(1, {1, 2}, {10, 12, 13});
equation
  assert(Util.compareReal(c[1], 1.0), "The element of c[1] must be 1.0");
  assert(Util.compareReal(c[2], 2.0), "The element of c[2] must be 2.0");
  assert(Util.compareReal(c[3], 10.0), "The element of c[3] must be 10.0");
  assert(Util.compareReal(c[4], 12.0), "The element of c[4] must be 12.0");
  assert(Util.compareReal(c[5], 13.0), "The element of c[5] must be 13.0");
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests array concatenation.</html>"));
end ArrayConcatenation1;
