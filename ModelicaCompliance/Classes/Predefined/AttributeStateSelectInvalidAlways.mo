within ModelicaCompliance.Classes.Predefined;

model AttributeStateSelect
  extends Icons.TestCase;

  Real v(stateSelect = StateSelect.always) = 5.0;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"4.8.7.1"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Checks that StateSelect.always is not misused.</html>"));
end AttributeStateSelect;
