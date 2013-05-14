within ModelicaCompliance.Arrays.Functions.Conversion;

model DimConversionMatrix
  extends Icons.TestCase;
  
  
  Real[2,2,1] m3 =  {{{1.0}, {2.0}}, {{3.0}, {4.0}}};
  Real[2,2] m4 = matrix(m3);    
equation
  assert(Util.compareReal(m4[1,1], 1.0), "The element of m4[1,1] should be 1.0");
  assert(Util.compareReal(m4[1,2], 2.0), "The element of m4[1,2] should be 2.0");
  assert(Util.compareReal(m4[2,1], 3.0), "The element of m4[2,1] should be 3.0");
  assert(Util.compareReal(m4[2,2], 4.0), "The element of m4[2,2] should be 4.0");
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests the builtin function matrix for array that returns the elements of the first two dimensions as a matrix.</html>"));
end DimConversionMatrix;
