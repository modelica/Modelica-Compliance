within ModelicaCompliance.Connections.Expandable;

model PresentInExp
  extends Icons.TestCase;

  expandable connector EC
    Real x;
  end EC;

  connector RealOutput = output Real;

  model M
    RealOutput x = 1.0;
  end M;

  EC ec;
  M m;
  Real y = ec.x;
equation
  connect(m.x, ec.x);

  annotation (
  __ModelicaAssociation(TestCase(shouldPass = true, section = {"9.1.3"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Checks that a potentially present variable is allowed to be
      used in an expressions if it is actually present.</html>"));
end PresentInExp;
