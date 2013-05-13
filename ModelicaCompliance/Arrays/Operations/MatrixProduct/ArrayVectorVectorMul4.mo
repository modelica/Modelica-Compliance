within ModelicaCompliance.Arrays.Operations.MatrixProduct;

model ArrayVectorVectorMul4
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
  
  Real r[3, 3] = [{2, 1, 3}] * transpose([{2, 1, 3}]);
equation 
  assert(realAlmostEq(r[1, 1], 4.0), "The element of r[1, 1] must be 4.0");
  assert(realAlmostEq(r[1, 2], 2.0), "The element of r[1, 2] must be 2.0");
  assert(realAlmostEq(r[1, 3], 6.0), "The element of r[1, 3] must be 6.0");
  assert(realAlmostEq(r[2, 1], 2.0), "The element of r[2, 1] must be 2.0");
  assert(realAlmostEq(r[2, 2], 1.0), "The element of r[2, 2] must be 1.0");
  assert(realAlmostEq(r[2, 3], 3.0), "The element of r[2, 3] must be 3.0");
  assert(realAlmostEq(r[3, 1], 6.0), "The element of r[3, 1] must be 6.0");
  assert(realAlmostEq(r[3, 2], 3.0), "The element of r[3, 2] must be 3.0");
  assert(realAlmostEq(r[3, 3], 9.0), "The element of r[3, 3] must be 9.0");
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that vector by vector multiplication of arrays with numeric elements is possible.</html>"));
end ArrayVectorVectorMul4;
