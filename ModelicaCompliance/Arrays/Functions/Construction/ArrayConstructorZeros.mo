within ModelicaCompliance.Arrays.Functions.Construction;

model ArrayConstructorZeros
  extends Icons.TestCase;
  
  
  Real z[2,3]  = zeros(2, 3);  
equation
  assert(Util.compareReal(z[1,1], 0.0), "The element of z[1,1] should be 0.0");
  assert(Util.compareReal(z[1,2], 0.0), "The element of z[1,2] should be 0.0");
  assert(Util.compareReal(z[1,3], 0.0), "The element of z[1,3] should be 0.0");
  assert(Util.compareReal(z[2,1], 0.0), "The element of z[2,1] should be 0.0");
  assert(Util.compareReal(z[2,2], 0.0), "The element of z[2,2] should be 0.0");
  assert(Util.compareReal(z[2,3], 0.0), "The element of z[2,3] should be 0.0");
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that it's possible to construct the Integer array with all elements equal to zero 
	     by using specialized array constructor function zeros.</html>"));
end ArrayConstructorZeros;
