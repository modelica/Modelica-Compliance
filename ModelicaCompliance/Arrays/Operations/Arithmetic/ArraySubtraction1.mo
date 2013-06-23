within ModelicaCompliance.Arrays.Operations.Arithmetic;

model ArraySubtraction1
  extends Icons.TestCase;
  
  Real sub[2, 2] = {{1, 2}, {3, 4}} - {{1, 2}, {2, 2}};
equation
  assert(Util.compareReal(sub[1,1], 0.0), "The element of sub[1,1] must be 0.0");
  assert(Util.compareReal(sub[1,2], 0.0), "The element of sub[1,2] must be 0.0");
  assert(Util.compareReal(sub[2,1], 1.0), "The element of sub[2,1] must be 1.0");
  assert(Util.compareReal(sub[2,2], 2.0), "The element of sub[2,2] must be 2.0");
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"10.6.2"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests array subtraction</html>"));
end ArraySubtraction1;
