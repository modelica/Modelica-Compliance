within ModelicaCompliance.Components.Variability;

model VariabilityConflictParameterCont
  extends Icons.TestCase;

  Real x = 6.3;
  parameter Real y = x;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"3.8.1"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that a parameter is not allowed to be given a binding
        equation which has continuous-time variability.</html>"));
end VariabilityConflictParameterCont;
