within ModelicaCompliance.Arrays.Functions.Construction;

model ArrayConstructorOnes
  extends Icons.TestCase;
  
  
  Real o[3] = ones(3);  
equation
  assert(Util.compareReal(o[1], 1.0), "The element of o[1] should be 1.0");
  assert(Util.compareReal(o[2], 1.0), "The element of o[2] should be 1.0");
  assert(Util.compareReal(o[3], 1.0), "The element of o[3] should be 1.0");
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"10.3.3"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that it's possible to construct the Integer array with all elements equal to one
	     by using specialized array constructor function ones.</html>"));
end ArrayConstructorOnes;
