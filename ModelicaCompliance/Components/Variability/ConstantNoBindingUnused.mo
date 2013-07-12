within ModelicaCompliance.Components.Variability;

model ConstantNoBindingUnused
  extends Icons.TestCase;

  constant Real x;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"3.8.1"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that a component declared as constant but which is not
      used in the model doesn't need a declaration equation.</html>"));
end ConstantNoBindingUnused;
