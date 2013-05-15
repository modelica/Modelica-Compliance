within ModelicaCompliance.Arrays.Operations.Arithmetic;

model ArrayEWExponentiation5
  extends Icons.TestCase; 

  Real e[2, 2];
equation
  e = 2 .^[1, 2; 3, 4];
  
  assert(Util.compareReal(e[1, 1], 2.0), "The element of e[1, 1] must be 2.0");
  assert(Util.compareReal(e[1, 2], 4.0), "The element of e[1, 2] must be 4.0");
  assert(Util.compareReal(e[2, 1], 8.0), "The element of e[2, 1] must be 8.0");
  assert(Util.compareReal(e[2, 2], 16.0), "The element of e[2, 2] must be 16.0");
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that elementwise exponentiation of scalar and array is possible.</html>"));
end ArrayEWExponentiation5;
