within ModelicaCompliance.Operators.Mathematical;

model SignRealAndIntegerExpression
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
  
  Integer i;
  Real r1, r2;
equation
  i = sign(65);
  r1 = sign(-4711.78);
  r2 = sign(0);
  assert(i == 1, "The value of variable i should be 1");
  assert(realAlmostEq(r1, -1.0), "The approximate value of the scalar variable r1 can not be considered as equal to 1.0");
  assert(realAlmostEq(r2, 0.0), "The approximate value of the scalar variable r2 can not be considered as equal to 0.0");
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that the built-in sign function is  allowed for real and integer expression.</html>"));
end SignRealAndIntegerExpression;
