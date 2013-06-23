within ModelicaCompliance.Arrays.Operations.Arithmetic;

model ArrayEWSubtraction4
  extends Icons.TestCase;
  
  Real[2] r;
equation
  r = {2,3}.-{4,5};
  
  assert(Util.compareReal(r[1], -2.0), "The element of r[1] must be -2.0");
  assert(Util.compareReal(r[2], -2.0), "The element of r[2] must be -2.0");
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"10.6.2"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that elementwise subtraction of two arrays is possible.</html>"));
end ArrayEWSubtraction4;
