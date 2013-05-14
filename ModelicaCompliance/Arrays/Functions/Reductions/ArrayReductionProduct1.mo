within ModelicaCompliance.Arrays.Functions.Reductions;

model ArrayReductionProduct1
  extends Icons.TestCase;
  
  
  Real  prod; 
equation
  prod    = product({3.14, 2, 2}); 
  assert(Util.compareReal(prod, 12.56), "The scalar product of all the elements of array expression should be 12.56");
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that the array reduction function product is possible.</html>"));
end ArrayReductionProduct1;
