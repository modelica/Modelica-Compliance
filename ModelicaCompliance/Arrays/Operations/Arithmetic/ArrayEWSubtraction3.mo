within ModelicaCompliance.Arrays.Operations.Arithmetic;

model ArrayEWSubtraction3
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

  Real[2] r;
equation
  r = {2,3}.-5;
  assert(realAlmostEq(r[1], -3.0), "The element of r[1] must be -3.0");
  assert(realAlmostEq(r[2], -2.0), "The element of r[2] must be -2.0");
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that elementwise subtraction of numeric array and scalar is possible.</html>"));
end ArrayEWSubtraction3;
