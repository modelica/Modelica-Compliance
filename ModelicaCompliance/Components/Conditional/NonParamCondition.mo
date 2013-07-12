within ModelicaCompliance.Components.Conditional;

model NonParamCondition
  extends Icons.TestCase;

  Boolean b;
  Real x if b;
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"4.4.5"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that the condition of a component must be a parameter
        expression that can be evaluated at compile time.</html>"));
end NonParamCondition;
