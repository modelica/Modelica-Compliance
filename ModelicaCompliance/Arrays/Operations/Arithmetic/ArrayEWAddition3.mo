within ModelicaCompliance.Arrays.Operations.Arithmetic;

model ArrayEWAddition3
  extends Icons.TestCase;
  

  Real[2] r;
equation
  r = {2,3}.+5;
  
  assert(Util.compareReal(r[1], 7.0), "The element of r[1] must be 7.0");
  assert(Util.compareReal(r[2], 8.0), "The element of r[2] must be 8.0");
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that elementwise addition of numeric array and scalar is possible.</html>"));
end ArrayEWAddition3;
