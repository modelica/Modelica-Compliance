within ModelicaCompliance.Arrays.Functions.Reductions;

model ArrayReductionSum2
  extends Icons.TestCase;
  
  Integer summ = sum(i for i in 1:10);  
equation
  assert(summ == 55, "The value of sum must be 55");
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that the array reduction function sum is possible.</html>"));
end ArrayReductionSum2;
