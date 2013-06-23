within ModelicaCompliance.Arrays.Operations.Arithmetic;

model ArrayConcatenation5
  extends Icons.TestCase;
  
  
  Real[:] c = cat(1, {1,2,3}, {4,5,6});
equation
  assert(Util.compareReal(c[1], 1.0), "The element of c[1] must be 1.0");
  assert(Util.compareReal(c[2], 2.0), "The element of c[2] must be 2.0");
  assert(Util.compareReal(c[3], 3.0), "The element of c[3] must be 3.0");
  assert(Util.compareReal(c[4], 4.0), "The element of c[4] must be 4.0");
  assert(Util.compareReal(c[5], 5.0), "The element of c[5] must be 5.0");
  assert(Util.compareReal(c[6], 6.0), "The element of c[6] must be 6.0");
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"10.4.2"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests array concatenation.</html>"));
end ArrayConcatenation5;
