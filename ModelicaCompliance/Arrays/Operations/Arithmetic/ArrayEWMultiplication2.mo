within ModelicaCompliance.Arrays.Operations.Arithmetic;

model ArrayEWMultiplication2
  extends Icons.TestCase; 

  Real[2] r;
equation
  r = 2 .*{4,5};
  
  assert(Util.compareReal(r[1], 8.0), "The element of r[1] must be 8.0");
  assert(Util.compareReal(r[2], 10.0), "The element of r[2] must be 10.0");
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that elementwise multiplication of numeric scalar by array is possible.</html>"));
end ArrayEWMultiplication2;
