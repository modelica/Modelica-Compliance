within ModelicaCompliance.Components.Variability;

model VariabilityConflictConstantParam
  extends Icons.TestCase;

  parameter Real x = 6.3;
  constant Real y = x;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"3.8.1"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that a constant is not allowed to be given a binding
        equation which has parameter variability.</html>"));
end VariabilityConflictConstantParam;
