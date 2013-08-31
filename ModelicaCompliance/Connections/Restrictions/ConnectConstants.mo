within ModelicaCompliance.Connections.Restrictions;

model ConnectConstants
  extends Icons.TestCase;

  connector C
    Real e;
    flow Real f;
    constant Real c = 2.0;
  end C;

  model M
    C c1, c2;
  end M;

  M m;
equation 
  connect(m.c1, m.c2);
  m.c1.e = 1.0;
  m.c1.f = 3.0;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"9.3"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Checks that it's possible to have connectors with
        constants.</html>"));
end ConnectConstants;
