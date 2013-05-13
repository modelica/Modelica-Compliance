within ModelicaCompliance.Arrays.Operations.Arithmetic;

model ArrayConcatenation1
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
  
  Real[5] c = cat(1, {1, 2}, {10, 12, 13});
equation
  assert(realAlmostEq(c[1], 1.0), "The element of c[1] must be 1.0");
  assert(realAlmostEq(c[2], 2.0), "The element of c[2] must be 2.0");
  assert(realAlmostEq(c[3], 10.0), "The element of c[3] must be 10.0");
  assert(realAlmostEq(c[4], 12.0), "The element of c[4] must be 12.0");
  assert(realAlmostEq(c[5], 13.0), "The element of c[5] must be 13.0");
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests array concatenation.</html>"));
end ArrayConcatenation1;
