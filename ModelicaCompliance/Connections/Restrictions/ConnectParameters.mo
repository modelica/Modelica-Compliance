within ModelicaCompliance.Connections.Restrictions;

model ConnectParameters
  extends Icons.TestCase;

  connector C
    Real e;
    flow Real f;
    parameter Real c = 2.0;
  end C;

  model M
    C c1, c2;
  equation
    c1.e = 1.0;
    c1.f = 3.0;
  end M;

  M m;
equation 
  connect(m.c1, m.c2);

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"9.3"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Checks that it's possible to have connectors with
        parameters.</html>"));
end ConnectParameters;
