within ModelicaCompliance.Operators.Mathematical;

model Atan2
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

  Real r;
equation
  r = atan2(0.5,0.5);
  assert(realAlmostEq(r, 0.7853981633974483), "The approximate value of the scalar variable r can not be considered as equal to 0.7853981633974483");  
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that the built-in inverse tangent2 function is allowed.</html>"));
end Atan2;
