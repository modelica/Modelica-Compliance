within ModelicaCompliance.Arrays.Operations.Arithmetic;

model ArrayEWExponentiation3
  extends Icons.TestCase; 

  Real[2] r;
equation
  r = {2,3}.^5;
  
  assert(Util.compareReal(r[1], 32.0), "The element of r[1] must be 32.0");
  assert(Util.compareReal(r[2], 243.0), "The element of r[2] must be 243.0");
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that elementwise exponentiation of numeric array and scalar is possible.</html>"));
end ArrayEWExponentiation3;
