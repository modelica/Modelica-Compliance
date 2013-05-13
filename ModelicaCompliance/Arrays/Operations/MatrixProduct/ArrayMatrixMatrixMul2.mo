within ModelicaCompliance.Arrays.Operations.MatrixProduct;

model ArrayMatrixMatrixMul2
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
  
  Real r[2, 2] = [1, 2; 3, 4] * [1, 2; 2, 1]; 
equation 
  assert(realAlmostEq(r[1, 1], 5.0), "The element of r[1, 1] must be 5.0");
  assert(realAlmostEq(r[1, 2], 4.0), "The element of r[1, 2] must be 4.0");
  assert(realAlmostEq(r[2, 1], 11.0), "The element of r[2, 1] must be 11.0");
  assert(realAlmostEq(r[2, 2], 10.0), "The element of r[2, 2] must be 10.0");
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that matrix by matrix multiplication of arrays with numeric elements is possible.</html>"));
end ArrayMatrixMatrixMul2;
