within ModelicaCompliance.Arrays.Functions.Reductions;

model ArrayReductionProduct2
  extends Icons.TestCase;
  
  Real  prod[5] = {product(j for j in i:1) for i in 0:4}; 
equation
  assert(Util.compareReal(prod[1], 0.0), "The element of prod[1] must be 0.0");
  assert(Util.compareReal(prod[2], 1.0), "The element of prod[2] must be 1.0");
  assert(Util.compareReal(prod[3], 1.0), "The element of prod[3] must be 1.0");
  assert(Util.compareReal(prod[4], 1.0), "The element of prod[4] must be 1.0");
  assert(Util.compareReal(prod[5], 1.0), "The element of prod[5] must be 1.0");
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"10.3.4"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that the array reduction function product is as expoected.</html>"));
end ArrayReductionProduct2;
