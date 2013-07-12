within ModelicaCompliance.Components.Conditional;

model InvalidUsageAlgorithm
  extends Icons.TestCase;

  Real x if true;
algorithm
  x := 2.0;
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"4.4.5"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that a conditional component is not allowed to be used
        in an assignment. Conditional components may only be modified or used in
        connections.</html>"));
end InvalidUsageAlgorithm;
