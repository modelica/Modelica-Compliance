within ModelicaCompliance.Arrays.Operations.Arithmetic;

model ArrayVectorVectorAddition
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
  
  Real add3[3] = {{1, 2, 3} + {4, 5, 6}};
equation
  assert(realAlmostEq(add3[1], 5.0), "The element of add3[1] must be 5.0");
  assert(realAlmostEq(add3[2], 7.0), "The element of add3[2] must be 7.0");
  assert(realAlmostEq(add3[3], 9.0), "The element of add3[5] must be 9.0");
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that addition of two vectors is posisble.</html>"));
end ArrayVectorVectorAddition;
