within ModelicaCompliance.Connections.Expandable;

model FlowInConnectorInExpandable
  extends Icons.TestCase;

  connector C
    Real e;
    flow Real f;
  end C;

  expandable connector EC
    C c;
  end EC;

  model M
    C c;
  equation
    c.e = 1.0;
  end M;

  M m;
  EC ec;
equation
  connect(m.c, ec.c);

  annotation (
  __ModelicaAssociation(TestCase(shouldPass = true, section = {"9.1.3"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Checks that while it's not allowed for an expandable
        connector to contain components prefixed with flow, it is allowed for it
        to contain non-expandable connector components with flow components.</html>"));
end FlowInConnectorInExpandable;
