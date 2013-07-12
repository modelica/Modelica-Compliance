within ModelicaCompliance.Components.Variability;

model VariabilityConflictConstantDisc
  extends Icons.TestCase;

  discrete Real x;
  constant Real y = x;
equation
  when sample(0.005, 0.1) then
    x = time;
  end when;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"3.8.1"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that a constant is not allowed to be given a binding
        equation which has discrete-time variability.</html>"));
end VariabilityConflictConstantDisc;
