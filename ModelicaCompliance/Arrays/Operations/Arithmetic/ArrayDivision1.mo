within ModelicaCompliance.Arrays.Operations.Arithmetic;

model ArrayDivision1
  extends Icons.TestCase;
  
  
  Real div1[3];
equation
  div1 = {2, 4, 6} / 2;
  
  assert(Util.compareReal(div1[1], 1.0), "The element of div1[1] must be 1.0");
  assert(Util.compareReal(div1[2], 2.0), "The element of div1[2] must be 2.0");
  assert(Util.compareReal(div1[3], 3.0), "The element of div1[3] must be 3.0");
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests array division</html>"));
end ArrayDivision1;
