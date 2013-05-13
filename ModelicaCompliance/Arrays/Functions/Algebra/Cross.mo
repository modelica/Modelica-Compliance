within ModelicaCompliance.Arrays.Functions.Algebra;

model Cross
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
  
  Real c[3] = cross({1, 0, 0}, {0, 1, 0});
equation
  assert(realAlmostEq(c[1], 0.0), "The element of c[1,1] should be 0.0");
  assert(realAlmostEq(c[2], 0.0), "The element of c[1,2] should be 0.0");
  assert(realAlmostEq(c[3], 1.0), "The element of c[1,3] should be 1.0");
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that it's possible to the cross product of the three vectors
		 by using the builtin corss function.</html>"));
end Cross;
