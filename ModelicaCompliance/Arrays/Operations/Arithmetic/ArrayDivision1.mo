within ModelicaCompliance.Arrays.Operations.Arithmetic;

model ArrayDivision1
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
  
  Real div1[3];
equation
  div1 = {2, 4, 6} / 2;
  assert(realAlmostEq(div1[1], 1.0), "The element of div1[1] must be 1.0");
  assert(realAlmostEq(div1[2], 2.0), "The element of div1[2] must be 2.0");
  assert(realAlmostEq(div1[3], 3.0), "The element of div1[3] must be 3.0");
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests array division</html>"));
end ArrayDivision1;
