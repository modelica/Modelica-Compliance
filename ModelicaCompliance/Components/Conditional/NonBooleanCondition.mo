within ModelicaCompliance.Components.Conditional;

model NonBooleanCondition
  extends Icons.TestCase;

  parameter Integer i = 1;
  Real x = 2.0 if i;
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"4.4.5"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that the condition of a component must be a boolean
        expression.</html>"));
end NonBooleanCondition;
