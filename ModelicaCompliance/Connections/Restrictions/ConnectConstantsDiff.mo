within ModelicaCompliance.Connections.Restrictions;

model ConnectConstantsDiff
  extends Icons.TestCase;

  connector C
    Real e;
    flow Real f;
    constant Real c;
  end C;

  model M
    C c1(c = 1.0), c2(c = 2.0);
  end M;

  M m;
equation 
  connect(m.c1, m.c2);
  m.c1.e = 1.0;
  m.c1.f = 3.0;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"9.3"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Checks that connected constants must have the same
        value.</html>"));
end ConnectConstantsDiff;
