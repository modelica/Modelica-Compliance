within ModelicaCompliance.Arrays.Functions.Algebra;

model OuterProduct
  extends Icons.TestCase;
  
  
  Real out[2, 2] = outerProduct({2, 1}, {3, 2});
equation
  assert(Util.compareReal(out[1,1], 6.0), "The element of out[1,1] should be 6.0");
  assert(Util.compareReal(out[1,2], 4.0), "The element of out[1,2] should be 4.0");
  assert(Util.compareReal(out[2,1], 3.0), "The element of out[2,1] should be 3.0");
  assert(Util.compareReal(out[2,2], 2.0), "The element of out[2,2] should be 2.0");
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"10.3.5"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that it's possible to construct the outer product of two vectors 
		 by using the builtin outerProduct function.</html>"));
end OuterProduct;
