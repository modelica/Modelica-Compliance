within ModelicaCompliance.Connections.Expandable;

model PresentInExp
  extends Icons.TestCase;

  model M
    expandable connector EC
      Real x;
    end EC;

    connector RealOutput = output Real;
    RealOutput ro;
    EC ec;
  equation
    connect(ro, ec.x);
    ec.x = 1.0;
  end M;

  annotation (
  __ModelicaAssociation(TestCase(shouldPass = true, section = {"9.1.3"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Checks that a potentially present variable is allowed to be
      used in an expressions if it is actually present.</html>"));
end PresentInExp;
