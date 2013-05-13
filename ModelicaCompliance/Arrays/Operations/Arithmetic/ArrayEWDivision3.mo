within ModelicaCompliance.Arrays.Operations.Arithmetic;

model ArrayEWDivision3
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

  Real[2, 2] r;
equation
  r = {{2, 4}, {1, 6}}./2;
  assert(realAlmostEq(r[1, 1], 1.0), "The element of r[1, 1] must be 1.0");
  assert(realAlmostEq(r[1, 2], 2.0), "The element of r[1, 2] must be 2.0");
  assert(realAlmostEq(r[2, 1], 0.5), "The element of r[2, 1] must be 0.5");
  assert(realAlmostEq(r[2, 2], 3.0), "The element of r[2, 2] must be 3.0");
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that elementwise division of numeric array by scalar is possible.</html>"));
end ArrayEWDivision3;
