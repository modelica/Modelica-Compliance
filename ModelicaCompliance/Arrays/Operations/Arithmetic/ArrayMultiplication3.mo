within ModelicaCompliance.Arrays.Operations.Arithmetic;

model ArrayMultiplication3
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

  Real m[3] = 3 * {1, 2, 3}; 
equation
  assert(realAlmostEq(m[1], 3.0), "The element of m[1] must be 3.0");
  assert(realAlmostEq(m[2], 6.0), "The element of m[2] must be 6.0");
  assert(realAlmostEq(m[3], 9.0), "The element of m[3] must be 9.0");
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests array multiplication.</html>"));
end ArrayMultiplication3;
