within ModelicaCompliance.Arrays.Functions.Construction;

model ArrayConstructorZeros
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
  
  Real z[2,3]  = zeros(2, 3);  
equation
  assert(realAlmostEq(z[1,1], 0.0), "The element of z[1,1] should be 0.0");
  assert(realAlmostEq(z[1,2], 0.0), "The element of z[1,2] should be 0.0");
  assert(realAlmostEq(z[1,3], 0.0), "The element of z[1,3] should be 0.0");
  assert(realAlmostEq(z[2,1], 0.0), "The element of z[2,1] should be 0.0");
  assert(realAlmostEq(z[2,2], 0.0), "The element of z[2,2] should be 0.0");
  assert(realAlmostEq(z[2,3], 0.0), "The element of z[2,3] should be 0.0");
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that it's possible to construct the Integer array with all elements equal to zero 
	     by using specialized array constructor function zeros.</html>"));
end ArrayConstructorZeros;
