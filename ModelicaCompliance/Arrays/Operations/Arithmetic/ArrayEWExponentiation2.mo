within ModelicaCompliance.Arrays.Operations.Arithmetic;

model ArrayEWExponentiation2
  extends Icons.TestCase;
  
  Real[2] r;
equation
  r = 2 .^{4,5};
  
  assert(Util.compareReal(r[1], 16.0), "The element of r[1] must be 16.0");
  assert(Util.compareReal(r[2], 32.0), "The element of r[2] must be 32.0");
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"10.6.7"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that elementwise exponentiation of numeric scalar and array is possible.</html>"));
end ArrayEWExponentiation2;
