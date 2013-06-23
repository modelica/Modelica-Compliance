within ModelicaCompliance.Arrays.Functions.Conversion;

model DimConversionVector
  extends Icons.TestCase;
  
  
  Real[3] v1 =  {1.0, 2.0, 3.0};
  Real[3,1] m1 = matrix(v1);     
  Real[3] v2 =  vector(m1);
equation
  assert(Util.compareReal(v2[1], 1.0), "The first element of the array should be 1.0");
  assert(Util.compareReal(v2[2], 2.0), "The second element of the array should be 2.0");
  assert(Util.compareReal(v2[3], 3.0), "The third element of the array should be 3.0");

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"10.3.2"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests the builtin function vector for array that returns a vector containing all the elements of the array,
    	  provided there is at most one dimension size greater than one.</html>"));
end DimConversionVector;
