within ModelicaCompliance.Classes.Predefined;

model ReservedStateSelectClass
  extends Icons.TestCase;

  class StateSelect
    Real x = 1.0;
  end StateSelect;

  StateSelect ss;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"4.8"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Checks that it's illegal to declare an element with the name StateSelect.</html>"));
end ReservedStateSelectClass;
