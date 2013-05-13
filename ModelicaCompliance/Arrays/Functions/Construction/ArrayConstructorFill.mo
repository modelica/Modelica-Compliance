within ModelicaCompliance.Arrays.Functions.Construction;

model ArrayConstructorFill
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
  
  Real f[2,2]  = fill(2.1,2,2); 
equation
  assert(realAlmostEq(f[1,1], 2.1), "The element of f[1,1] should be 2.1");
  assert(realAlmostEq(f[1,2], 2.1), "The element of f[1,2] should be 2.1");
  assert(realAlmostEq(f[2,1], 2.1), "The element of f[2,1] should be 2.1");
  assert(realAlmostEq(f[2,2], 2.1), "The element of f[2,2] should be 2.1");
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that it's possible to construct the matrix 
	     by using specialized array constructor function fill.</html>"));
end ArrayConstructorFill;
