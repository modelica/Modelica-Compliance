within ModelicaCompliance.Classes.Predefined;

model AttributeStateSelect
  extends Icons.TestCase;

  Real x(stateSelect = StateSelect.never) = 1.0;
  Real y(stateSelect = StateSelect.avoid) = 2.0;
  Real z(stateSelect = StateSelect.default) = 3.0;
  Real u(stateSelect = StateSelect.prefer) = 4.0;
  Real v(stateSelect = StateSelect.always) = 5.0;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"4.8.7.1"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Checks that all defined values of StateSelect can be used.</html>"));
end AttributeStateSelect;
