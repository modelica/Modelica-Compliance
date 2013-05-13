within ModelicaCompliance.Arrays.Operations.Arithmetic;

model ArrayConcatenation2
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
  
  Real[2, 3] c = cat(2, {{1, 2}, {3, 4}}, {{10}, {11}});
equation
  assert(realAlmostEq(c[1, 1], 1.0), "The element of c[1, 1] must be 1.0");
  assert(realAlmostEq(c[1, 2], 2.0), "The element of c[1, 2] must be 2.0");
  assert(realAlmostEq(c[1, 3], 10.0), "The element of c[1, 3] must be 10.0");
  assert(realAlmostEq(c[2, 1], 3.0), "The element of c[2, 1] must be 3.0");
  assert(realAlmostEq(c[2, 2], 4.0), "The element of c[2, 2] must be 4.0");
  assert(realAlmostEq(c[2, 3], 11.0), "The element of c[2, 3] must be 11.0");
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests array concatenation.</html>"));
end ArrayConcatenation2;
