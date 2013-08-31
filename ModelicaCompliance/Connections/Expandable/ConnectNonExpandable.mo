within ModelicaCompliance.Connections.Expandable;

model ConnectNonExpandable
  extends Icons.TestCase;

  expandable connector EC
  end EC;

  connector C
    Real e;
    flow Real f;
  end C;

  model M
    EC ec;
    C c;
  end M;

  M m;
equation
  connect(m.c, m.ec);
  m.c.e = 1.0;
  m.c.f = 2.0;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"9.1.3"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Checks that it's not allowed to connect an expandable
        connector to a non-expandable one.</html>"));
end ConnectNonExpandable;
