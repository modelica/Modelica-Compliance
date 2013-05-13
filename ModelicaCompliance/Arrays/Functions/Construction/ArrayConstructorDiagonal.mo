within ModelicaCompliance.Arrays.Functions.Construction;

model ArrayConstructorDiagonal
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
  
  Real di[3,3] = diagonal({1, 2, 3});   
equation
  assert(realAlmostEq(di[1,1], 1.0), "The element of di[1,1] should be 1.0");
  assert(realAlmostEq(di[1,2], 0.0), "The element of di[1,2] should be 0.0");
  assert(realAlmostEq(di[1,3], 0.0), "The element of di[1,3] should be 0.0");
  assert(realAlmostEq(di[2,1], 0.0), "The element of di[2,1] should be 0.0");
  assert(realAlmostEq(di[2,2], 2.0), "The element of di[2,2] should be 2.0");
  assert(realAlmostEq(di[2,3], 0.0), "The element of di[2,3] should be 0.0");
  assert(realAlmostEq(di[3,1], 0.0), "The element of di[3,1] should be 0.0");
  assert(realAlmostEq(di[3,2], 0.0), "The element of di[3,2] should be 0.0");
  assert(realAlmostEq(di[3,3], 3.0), "The element of di[3,3] should be 3.0");
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that it's possible to construct a square matrix with elements of vector v on the diagonal and all other elements zero 
	     by using specialized array constructor function diagonal.</html>"));
end ArrayConstructorDiagonal;
