within ModelicaCompliance.Classes.Predefined;

model AttributeStateSelectInvalidNever
  extends Icons.TestCase;

  Real x(stateSelect = StateSelect.never);

  equation
      der(x)=time;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"4.8.7.1"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Checks that StateSelect.never is not misused.</html>"));
end AttributeStateSelectInvalidNever;
