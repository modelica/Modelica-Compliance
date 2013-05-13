within ModelicaCompliance.Arrays.Functions.Algebra;

model Skew
  extends Icons.TestCase;
  
function realAlmostEq "Compare an approximation of floating-point numbers and check if they can be considered equal or not."
  input Real a,b;
  input Real absTol := 1e-10;
  input Real relTol := 1e-5;
  output Boolean almostEq;
protected
  Real diff;
algorithm
  diff := abs(a-b);
  almostEq := diff < absTol or diff <= max(abs(b),abs(a)) * relTol;
end realAlmostEq;
  
  Real s[3, 3] = skew({1, 2, 3});
equation
  assert(realAlmostEq(s[1,1], 0.0), "The element of s[1,1] should be 0.0");
  assert(realAlmostEq(s[1,2], -3.0), "The element of s[1,2] should be -3.0");
  assert(realAlmostEq(s[1,3], 2.0), "The element of s[1,3] should be 2.0");
  assert(realAlmostEq(s[2,1], 3.0), "The element of s[2,1] should be 3.0");
  assert(realAlmostEq(s[2,2], 0.0), "The element of s[2,2] should be 0.0");
  assert(realAlmostEq(s[2,3], -1.0), "The element of s[2,3] should be -1.0");
  assert(realAlmostEq(s[3,1], -2.0), "The element of s[3,1] should be -2.0");
  assert(realAlmostEq(s[3,2], 1.0), "The element of s[3,2] should be 1.0");
  assert(realAlmostEq(s[3,3], 0.0), "The element of s[3,3] should be 0.0");
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that it's possible to construct the three by three skew matrix associated with a three vector
		 by using the builtin skew function.</html>"));
end Skew;
