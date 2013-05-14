within ModelicaCompliance.Arrays.Operations.Arithmetic;

model ArrayConcatenation2
  extends Icons.TestCase;
  
  
  Real[2, 3] c = cat(2, {{1, 2}, {3, 4}}, {{10}, {11}});
equation
  assert(Util.compareReal(c[1, 1], 1.0), "The element of c[1, 1] must be 1.0");
  assert(Util.compareReal(c[1, 2], 2.0), "The element of c[1, 2] must be 2.0");
  assert(Util.compareReal(c[1, 3], 10.0), "The element of c[1, 3] must be 10.0");
  assert(Util.compareReal(c[2, 1], 3.0), "The element of c[2, 1] must be 3.0");
  assert(Util.compareReal(c[2, 2], 4.0), "The element of c[2, 2] must be 4.0");
  assert(Util.compareReal(c[2, 3], 11.0), "The element of c[2, 3] must be 11.0");
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests array concatenation.</html>"));
end ArrayConcatenation2;
