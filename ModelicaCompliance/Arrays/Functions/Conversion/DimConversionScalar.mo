within ModelicaCompliance.Arrays.Functions.Conversion;

model DimConversionScalar
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
  
  Real[1,1,1] m2 = {{{4}}};
  Real s1 = scalar(m2); 
equation
  assert(realAlmostEq(s1, 4.0), "the scalar function should return 4.0 which is the single element of array m2");

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests the builtin function scalar for array that returns the single element of array.</html>"));
end DimConversionScalar;
