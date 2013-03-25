within ModelicaCompliance.Redeclare.Flattening;

model InheritanceVariabilityConst
  extends Icons.TestCase;

  model M
    replaceable constant Real x;
  end M;

  Real y = 2;
  extends M(redeclare Real x = y);

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false)),
    experiment(StopTime = 0.01),
    Documentation(
    info = "<html>Checks that the constant prefix of the original declaration
    is inherited by the new declaration. The given binding of y should in that
    case be illegal since it has higher variability than x.</html>"));
end InheritanceVariabilityConst;
