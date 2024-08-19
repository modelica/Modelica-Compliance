within ModelicaCompliance.Classes.Predefined;

model ReservedStateSelectClass
  extends Icons.TestCase;

  class StateSelect
    Real x = 1.0;
  end StateSelect;

  StateSelect ss;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"4.9"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Since Modelica 3.4 StateSelect is no longer a reserved class.</html>"));
end ReservedStateSelectClass;
