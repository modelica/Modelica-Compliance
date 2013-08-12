within ModelicaCompliance.Components.Variability;

model ConstantBindingModifier
  extends Icons.TestCase;

  model M
    constant Real x;
    Real z = x;
  end M;

  M m(x = 1.0);

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"3.8.1"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that a component declared as constant can be given a
        declaration equation by using a modifier.</html>"));
end ConstantBindingModifier;
