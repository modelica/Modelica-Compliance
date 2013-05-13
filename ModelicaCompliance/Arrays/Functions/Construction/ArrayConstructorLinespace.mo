within ModelicaCompliance.Arrays.Functions.Construction;

model ArrayConstructorLinespace
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
  
  Real ls[5] = linspace(0.0, 8.0, 5); 
equation
  assert(realAlmostEq(ls[1], 0.0), "The element of ls[1] should be 0.0");
  assert(realAlmostEq(ls[2], 2.0), "The element of ls[2] should be 2.0");
  assert(realAlmostEq(ls[3], 4.0), "The element of ls[3] should be 4.0");
  assert(realAlmostEq(ls[4], 6.0), "The element of ls[4] should be 6.0");
  assert(realAlmostEq(ls[5], 8.0), "The element of ls[5] should be 8.0");
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that it's possible to construct the vector 
	     by using specialized array constructor function linespace.</html>"));
end ArrayConstructorLinespace;
