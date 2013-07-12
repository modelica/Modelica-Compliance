within ModelicaCompliance.Components.Conditional;

model InvalidUsageEquation
  extends Icons.TestCase;

  Real x if true;
equation
  x = 2.0;
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"4.4.5"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that a conditional component is not allowed to be used
        in an equation. Conditional components may only be modified or used in
        connections.</html>"));
end InvalidUsageEquation;
