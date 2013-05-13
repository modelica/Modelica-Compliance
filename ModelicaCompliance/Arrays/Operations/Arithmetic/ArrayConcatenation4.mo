within ModelicaCompliance.Arrays.Operations.Arithmetic;

model ArrayConcatenation4
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
  
  Real[1, 1, 1] A = {{{1}}};
  Real[1, 1, 2] B = {{{2, 3}}};
  Real[1, 1, 3] C = {{{4, 5, 6}}};
  Real[1, 1, 6] R = cat(3, A, B, C);
equation
  assert(realAlmostEq(R[1, 1, 1], 1.0), "The element of R[1, 1, 1] must be 1.0");
  assert(realAlmostEq(R[1, 1, 2], 2.0), "The element of R[1, 1, 2] must be 2.0");
  assert(realAlmostEq(R[1, 1, 3], 3.0), "The element of R[1, 1, 3] must be 3.0");
  assert(realAlmostEq(R[1, 1, 4], 4.0), "The element of R[1, 1, 4] must be 4.0");
  assert(realAlmostEq(R[1, 1, 5], 5.0), "The element of R[1, 1, 5] must be 5.0");
  assert(realAlmostEq(R[1, 1, 6], 6.0), "The element of R[1, 1, 6] must be 6.0");
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests array concatenation.</html>"));
end ArrayConcatenation4;
