within ModelicaCompliance.Operators.Mathematical;

model SqrtRealAndIntegerExpression
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
  Real r;
equation
  i = sqrt(0);
  r = sqrt(25);
  assert(i == 0, "The value of variable i should be 0");
  assert(realAlmostEq(r, 5.0), "The approximate value of the scalar variable r can not be considered as equal to 5.0");

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that the built-in sqrt function is  allowed for real and integer expression.</html>"));
end SqrtRealAndIntegerExpression;
