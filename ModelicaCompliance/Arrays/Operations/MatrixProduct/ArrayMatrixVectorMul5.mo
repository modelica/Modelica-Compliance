within ModelicaCompliance.Arrays.Operations.MatrixProduct;

model ArrayMatrixVectorMul5
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
  
  Real x[3, 0], y[0], z[3];
equation 
  z = x * y;
  assert(realAlmostEq(z[1], 0.0), "The element of z[1] must be 0.0");
  assert(realAlmostEq(z[2], 0.0), "The element of z[2] must be 0.0");
  assert(realAlmostEq(z[3], 0.0), "The element of z[3] must be 0.0");
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that matrix by vector multiplication of arrays with numeric elements is possible.</html>"));
end ArrayMatrixVectorMul5;
