within ModelicaCompliance.Classes.Predefined;

model AttributeStateSelectInvalidAlways
  extends Icons.TestCase;

  Real v(stateSelect = StateSelect.always) = if time<1e-5 then 1.0 else 5.0;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"4.8.7.1"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Checks that StateSelect.always is not misused. 
       Note that if we had v=5.0 it could be differentiated and v selected as a state (with derivative zero).</html>"));
end AttributeStateSelectInvalidAlways;
