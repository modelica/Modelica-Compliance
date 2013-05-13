within ModelicaCompliance.Arrays.Functions.Construction;

model ArrayConstructorOnes
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
  
  Real o[3] = ones(3);  
equation
  assert(realAlmostEq(o[1], 1.0), "The element of o[1] should be 1.0");
  assert(realAlmostEq(o[2], 1.0), "The element of o[2] should be 1.0");
  assert(realAlmostEq(o[3], 1.0), "The element of o[3] should be 1.0");
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that it's possible to construct the Integer array with all elements equal to one
	     by using specialized array constructor function ones.</html>"));
end ArrayConstructorOnes;
