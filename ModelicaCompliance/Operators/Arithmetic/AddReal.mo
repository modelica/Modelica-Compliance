within ModelicaCompliance.Operators.Arithmetic;

model AddReal
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

  constant Real r = 4711.2 + 1138.3;
equation
  assert(realAlmostEq(r, 5849.5), "The approximate value of the scalar variable r can not be considered as equal to 5849.5");
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that addition of real scalars is possible.</html>"));
end AddReal;
