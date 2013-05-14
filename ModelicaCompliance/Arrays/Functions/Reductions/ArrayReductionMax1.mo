within ModelicaCompliance.Arrays.Functions.Reductions;

model ArrayReductionMax1
  extends Icons.TestCase;
  
  
  Real maximum;  
equation
  maximum = max([1, 2, 3; 4, 5, 6]); 
  assert(Util.compareReal(maximum, 6.0), "The largest element of array expression should be 6.0");
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that the array reduction function max is possible.</html>"));
end ArrayReductionMax1;
