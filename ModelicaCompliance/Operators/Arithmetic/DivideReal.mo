within ModelicaCompliance.Operators.Arithmetic;

model DivideReal
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

  constant Real r = 23424.5 / 1234.78;
equation
  assert(realAlmostEq(r, 18.970585853350396), "The approximate value of the scalar variable r can not be considered as equal to 18.970585853350396");
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that division of real scalars is possible.</html>"));
end DivideReal;

