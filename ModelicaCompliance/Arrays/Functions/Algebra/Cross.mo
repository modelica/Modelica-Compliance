within ModelicaCompliance.Arrays.Functions.Algebra;

model Cross
  extends Icons.TestCase;
  
  
  Real c[3] = cross({1, 0, 0}, {0, 1, 0});
equation
  assert(Util.compareReal(c[1], 0.0), "The element of c[1,1] should be 0.0");
  assert(Util.compareReal(c[2], 0.0), "The element of c[1,2] should be 0.0");
  assert(Util.compareReal(c[3], 1.0), "The element of c[1,3] should be 1.0");
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"10.3.5"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that it's possible to the cross product of the three vectors
		 by using the builtin cross function.</html>"));
end Cross;
