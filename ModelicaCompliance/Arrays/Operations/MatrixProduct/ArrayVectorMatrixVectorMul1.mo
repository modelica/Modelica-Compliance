within ModelicaCompliance.Arrays.Operations.MatrixProduct;

model ArrayVectorMatrixVectorMul1
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
  
  Real  r = {1, 2, 3} * {{1, 1, 1}, {2, 2, 2}, {3, 3, 3}} * {1, 2, 3} ;
equation 
  assert(realAlmostEq(r, 84.0), "The value of r must be 84.0");
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that vector-matrix-vector multiplication of arrays with numeric elements is possible.</html>"));
end ArrayVectorMatrixVectorMul1;
