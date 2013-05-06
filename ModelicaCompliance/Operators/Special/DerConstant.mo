within ModelicaCompliance.Operators.Special;

model DerConstant
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

  constant Real pa = 1; 
  Real a = der(pa);
  Real b = der(1.0);
  Real[1,2,1,2] c = der({{{{1.0,2.0}},{{3.0,4.0}}}});
equation
 assert(realAlmostEq(a, 0.0), "The result of a shall be 0.0");
 assert(realAlmostEq(b, 0.0), "The result of b shall be 0.0");
 assert(realAlmostEq(c[1,1,1,1], 0.0), "The result of c[1,1,1,1] shall be 0.0");
 assert(realAlmostEq(c[1,1,1,2], 0.0), "The result of c[1,1,1,2] shall be 0.0");
 assert(realAlmostEq(c[1,2,1,1], 0.0), "The result of c[1,2,1,1] shall be 0.0");
 assert(realAlmostEq(c[1,2,1,2], 0.0), "The result of c[1,2,1,2] shall be 0.0");
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests the time derivative result for Real parameters and constants is a zero scalar or array of the same size as the variable.</html>"));
end DerConstant;
