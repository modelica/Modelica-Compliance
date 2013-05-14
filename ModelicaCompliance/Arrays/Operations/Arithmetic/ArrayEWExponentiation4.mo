within ModelicaCompliance.Arrays.Operations.Arithmetic;

model ArrayEWExponentiation4
  extends Icons.TestCase;
  

  Real[2] r;
equation
  r = {2,3}.^{4,5};
  assert(Util.compareReal(r[1], 16.0), "The element of r[1] must be 16.0");
  assert(Util.compareReal(r[2], 243.0), "The element of r[2] must be 243.0");
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that elementwise exponentiation of two arrays is possible.</html>"));
end ArrayEWExponentiation4;
