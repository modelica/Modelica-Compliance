within ModelicaCompliance.Arrays.Functions.Conversion;

model DimConversionVector
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
  
  Real[3] v1 =  {1.0, 2.0, 3.0};
  Real[3,1] m1 = matrix(v1);     
  Real[3] v2 =  vector(m1);
equation
  assert(realAlmostEq(v2[1], 1.0), "The first element of the array should be 1.0");
  assert(realAlmostEq(v2[2], 2.0), "The second element of the array should be 2.0");
  assert(realAlmostEq(v2[3], 3.0), "The third element of the array should be 3.0");

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests the builtin function vector for array that returns a vector containing all the elements of the array,
    	  provided there is at most one dimension size greater than one.</html>"));
end DimConversionVector;
