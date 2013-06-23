within ModelicaCompliance.Arrays.Functions.Construction;

model ArrayConstructorFill
  extends Icons.TestCase;
  
  
  Real f[2,2]  = fill(2.1,2,2); 
equation
  assert(Util.compareReal(f[1,1], 2.1), "The element of f[1,1] should be 2.1");
  assert(Util.compareReal(f[1,2], 2.1), "The element of f[1,2] should be 2.1");
  assert(Util.compareReal(f[2,1], 2.1), "The element of f[2,1] should be 2.1");
  assert(Util.compareReal(f[2,2], 2.1), "The element of f[2,2] should be 2.1");
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"10.3.3"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that it's possible to construct the matrix 
	     by using specialized array constructor function fill.</html>"));
end ArrayConstructorFill;
