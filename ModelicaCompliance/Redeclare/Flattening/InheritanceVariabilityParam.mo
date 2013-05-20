within ModelicaCompliance.Redeclare.Flattening;

model InheritanceVariabilityParam
  extends Icons.TestCase;

  model M
    replaceable parameter Real x = 5.0;
    parameter Real y = x;
  end M;

  M m(redeclare Real x);

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
    info = "<html>Checks that the parameter prefix of the original declaration
      is inherited by the new declaration. This test assumes that the tool
      checks the variability of the binding, since the assignment to y will be
      illegal if x loses it's parameter prefix.</html>"));
end InheritanceVariabilityParam;
