within ModelicaCompliance.Components.Variability;

model VariabilityConflictParameterDisc
  extends Icons.TestCase;

  discrete Real x;
  parameter Real y = x;
equation
  when sample(0.005, 0.1) then
    x = time;
  end when;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"3.8.2"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that a parameter is not allowed to be given a binding
        equation which has discrete-time variability.</html>"));
end VariabilityConflictParameterDisc;
