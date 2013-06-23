within ModelicaCompliance.Arrays.Functions.Reductions;

model ArrayReductionSum3
  extends Icons.TestCase;

  Real summ = sum(i^2 for i in {1, 3, 7, 6});  
equation
  assert(Util.compareReal(summ, 95.0), "The value of sum must be 95.0");
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"10.3.4"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that the array reduction function sum is possible.</html>"));
end ArrayReductionSum3;
