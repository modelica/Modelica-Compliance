within ModelicaCompliance.Arrays.Operations.Arithmetic;

model ArrayEWDivision3
  extends Icons.TestCase;
  
  Real[2, 2] r;
equation
  r = {{2, 4}, {1, 6}}./2;
  
  assert(Util.compareReal(r[1, 1], 1.0), "The element of r[1, 1] must be 1.0");
  assert(Util.compareReal(r[1, 2], 2.0), "The element of r[1, 2] must be 2.0");
  assert(Util.compareReal(r[2, 1], 0.5), "The element of r[2, 1] must be 0.5");
  assert(Util.compareReal(r[2, 2], 3.0), "The element of r[2, 2] must be 3.0");
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"10.6.6"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that elementwise division of numeric array by scalar is possible.</html>"));
end ArrayEWDivision3;
