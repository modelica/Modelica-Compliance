within ModelicaCompliance.Arrays.Functions.Construction;

model ArrayConstructorDiagonal
  extends Icons.TestCase;
  
  
  Real di[3,3] = diagonal({1, 2, 3});   
equation
  assert(Util.compareReal(di[1,1], 1.0), "The element of di[1,1] should be 1.0");
  assert(Util.compareReal(di[1,2], 0.0), "The element of di[1,2] should be 0.0");
  assert(Util.compareReal(di[1,3], 0.0), "The element of di[1,3] should be 0.0");
  assert(Util.compareReal(di[2,1], 0.0), "The element of di[2,1] should be 0.0");
  assert(Util.compareReal(di[2,2], 2.0), "The element of di[2,2] should be 2.0");
  assert(Util.compareReal(di[2,3], 0.0), "The element of di[2,3] should be 0.0");
  assert(Util.compareReal(di[3,1], 0.0), "The element of di[3,1] should be 0.0");
  assert(Util.compareReal(di[3,2], 0.0), "The element of di[3,2] should be 0.0");
  assert(Util.compareReal(di[3,3], 3.0), "The element of di[3,3] should be 3.0");
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that it's possible to construct a square matrix with elements of vector v on the diagonal and all other elements zero 
	     by using specialized array constructor function diagonal.</html>"));
end ArrayConstructorDiagonal;
