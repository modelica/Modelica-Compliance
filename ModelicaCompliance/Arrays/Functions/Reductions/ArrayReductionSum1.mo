within ModelicaCompliance.Arrays.Functions.Reductions;

model ArrayReductionSum1
  extends Icons.TestCase;
  
  
  Real summ;  
equation
  summ    = sum({{1, 2, 3}, {4, 5, 6}});
  
  assert(Util.compareReal(summ, 21.0), "The value of summ should be 21.0");
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that the array reduction function sum is possible.</html>"));
end ArrayReductionSum1;
