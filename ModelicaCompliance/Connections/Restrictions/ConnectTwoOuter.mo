within ModelicaCompliance.Connections.Restrictions;

model ConnectTwoOuter
  extends Icons.TestCase;

  connector C
    outer Real e;
    flow Real f;
  end C;

  model M
    C c1, c2;
    inner Real e = 1.0;
  end M;

  M m;
equation
  connect(m.c1, m.c2);
  m.c1.f = 2.0;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"9.3"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Checks that a connector component is not allowed to be
        declared as parameter.</html>"));
end ConnectTwoOuter;
