within ModelicaCompliance.Arrays.Functions.Construction;

model ArrayConstructorIdentity
  extends Icons.TestCase;
  
  
  Real id[3,3] = identity(3);    
equation
  assert(Util.compareReal(id[1,1], 1.0), "The element of id[1,1] should be 1.0");
  assert(Util.compareReal(id[1,2], 0.0), "The element of id[1,2] should be 0.0");
  assert(Util.compareReal(id[1,3], 0.0), "The element of id[1,3] should be 0.0");
  assert(Util.compareReal(id[2,1], 0.0), "The element of id[2,1] should be 0.0");
  assert(Util.compareReal(id[2,2], 1.0), "The element of id[2,2] should be 1.0");
  assert(Util.compareReal(id[2,3], 0.0), "The element of id[2,3] should be 0.0");
  assert(Util.compareReal(id[3,1], 0.0), "The element of id[3,1] should be 0.0");
  assert(Util.compareReal(id[3,2], 0.0), "The element of id[3,2] should be 0.0");
  assert(Util.compareReal(id[3,3], 1.0), "The element of id[3,3] should be 1.0");
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that it's possible to construct the n by n integer identity matix, with ones on the diagonal and zeros at the other places 
	     by using specialized array constructor function identity.</html>"));
end ArrayConstructorIdentity;
