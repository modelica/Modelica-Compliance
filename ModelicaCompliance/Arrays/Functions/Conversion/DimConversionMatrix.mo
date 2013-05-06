within ModelicaCompliance.Arrays.Functions.Conversion;

model DimConversionMatrix
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
  
  Real[2,2,1] m3 =  {{{1.0}, {2.0}}, {{3.0}, {4.0}}};
  Real[2,2] m4 = matrix(m3);    
equation
  assert(realAlmostEq(m4[1,1], 1.0), "The element of m4[1,1] should be 1.0");
  assert(realAlmostEq(m4[1,2], 2.0), "The element of m4[1,2] should be 2.0");
  assert(realAlmostEq(m4[2,1], 3.0), "The element of m4[2,1] should be 3.0");
  assert(realAlmostEq(m4[2,2], 4.0), "The element of m4[2,2] should be 4.0");
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests the builtin function matrix for array that returns the elements of the first two dimensions as a matrix.</html>"));
end DimConversionMatrix;
