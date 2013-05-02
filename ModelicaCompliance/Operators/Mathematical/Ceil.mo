within ModelicaCompliance.Operators.Mathematical;

model Ceil
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
  r = ceil(4.5);
  assert(realAlmostEq(r, 5.0), "The approximate value of the scalar variable r can not be considered as equal to 5.0");
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that the built-in Ceil function is allowed and result and argument shall have type real.</html>"));
end Ceil;
