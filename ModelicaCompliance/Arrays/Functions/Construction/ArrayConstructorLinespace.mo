within ModelicaCompliance.Arrays.Functions.Construction;

model ArrayConstructorLinespace
  extends Icons.TestCase;
  
  
  Real ls[5] = linspace(0.0, 8.0, 5); 
equation
  assert(Util.compareReal(ls[1], 0.0), "The element of ls[1] should be 0.0");
  assert(Util.compareReal(ls[2], 2.0), "The element of ls[2] should be 2.0");
  assert(Util.compareReal(ls[3], 4.0), "The element of ls[3] should be 4.0");
  assert(Util.compareReal(ls[4], 6.0), "The element of ls[4] should be 6.0");
  assert(Util.compareReal(ls[5], 8.0), "The element of ls[5] should be 8.0");
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that it's possible to construct the vector 
	     by using specialized array constructor function linespace.</html>"));
end ArrayConstructorLinespace;
