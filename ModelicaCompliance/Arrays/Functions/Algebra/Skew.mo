within ModelicaCompliance.Arrays.Functions.Algebra;

model Skew
  extends Icons.TestCase;
  
  
  Real s[3, 3] = skew({1, 2, 3});
equation
  assert(Util.compareReal(s[1,1], 0.0), "The element of s[1,1] should be 0.0");
  assert(Util.compareReal(s[1,2], -3.0), "The element of s[1,2] should be -3.0");
  assert(Util.compareReal(s[1,3], 2.0), "The element of s[1,3] should be 2.0");
  assert(Util.compareReal(s[2,1], 3.0), "The element of s[2,1] should be 3.0");
  assert(Util.compareReal(s[2,2], 0.0), "The element of s[2,2] should be 0.0");
  assert(Util.compareReal(s[2,3], -1.0), "The element of s[2,3] should be -1.0");
  assert(Util.compareReal(s[3,1], -2.0), "The element of s[3,1] should be -2.0");
  assert(Util.compareReal(s[3,2], 1.0), "The element of s[3,2] should be 1.0");
  assert(Util.compareReal(s[3,3], 0.0), "The element of s[3,3] should be 0.0");
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"10.3.5"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that it's possible to construct the three by three skew matrix associated with a three vector
		 by using the builtin skew function.</html>"));
end Skew;
