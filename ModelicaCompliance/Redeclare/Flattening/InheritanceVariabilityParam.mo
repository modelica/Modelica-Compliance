within ModelicaCompliance.Redeclare.Flattening;

model InheritanceVariabilityParam
  extends Icons.TestCase;

  model M
    replaceable parameter Real x;
  end M;

  M m(redeclare Real x);

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
    info = "<html>Checks that the parameter prefix of the original declaration
      is inherited by the new declaration. This test assumes that the tool does
      balance checking, since the model will be unbalanced if the variability is
      not inherited.</html>"));
end InheritanceVariabilityParam;
