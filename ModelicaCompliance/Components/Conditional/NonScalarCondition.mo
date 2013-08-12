within ModelicaCompliance.Components.Conditional;

model NonScalarCondition
  extends Icons.TestCase;

  parameter Boolean b[2] = {true, true};
  Real x = 2.0 if b;
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"4.4.5"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that the condition of a component must be a scalar
        expression.</html>"));
end NonScalarCondition;
