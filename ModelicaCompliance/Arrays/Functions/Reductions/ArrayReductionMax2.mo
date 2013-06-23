within ModelicaCompliance.Arrays.Functions.Reductions;

model ArrayReductionMax2
  extends Icons.TestCase;

  
  Real maximum = max(i^2 for i in {3, 7, 6});  
equation
  assert(Util.compareReal(maximum, 49.0), "The value of maximum must be 49.0");
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"10.3.4"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that the array reduction function max is possible.</html>"));
end ArrayReductionMax2;
