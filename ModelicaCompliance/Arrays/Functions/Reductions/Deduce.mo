within ModelicaCompliance.Arrays.Functions.Reductions;

model Deduce
  extends Icons.TestCase;
  
  Real x[3] = {1,2,3};
  Real y = sum(x[i] for i);

equation

  assert(Util.compareReal(y, 6.0), "The value of y should be 6.0");
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"10.3.4.1","11.2.2.1"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that deduction of the range is possible for reduction expressions.</html>"));
end Deduce;
