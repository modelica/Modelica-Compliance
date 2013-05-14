within ModelicaCompliance.Arrays.Functions.Conversion;

model DimConversionScalar
  extends Icons.TestCase;
  
  
  Real[1,1,1] m2 = {{{4}}};
  Real s1 = scalar(m2); 
equation
  assert(Util.compareReal(s1, 4.0), "the scalar function should return 4.0 which is the single element of array m2");

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests the builtin function scalar for array that returns the single element of array.</html>"));
end DimConversionScalar;
