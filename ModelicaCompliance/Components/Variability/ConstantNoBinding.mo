within ModelicaCompliance.Components.Variability;

model ConstantNoBinding
  extends Icons.TestCase;

  constant Real x;
  Real z = x;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"3.8.1"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that a component declared as constant must have an
        associated declaration equation with a constant expression, if it's used
        in a model.</html>"));
end ConstantNoBinding;
