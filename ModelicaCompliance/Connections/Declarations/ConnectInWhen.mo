within ModelicaCompliance.Connections.Declarations;

model ConnectInWhen
  extends Icons.TestCase;

  connector C
    flow Real f;
    Real e;
  end C;

  model M
    C c1, c2;
  end M;

  M m;
equation
  m.c1.e = 1.0;
  m.c1.f = 2.0;

  when time > 1.0 then
    connect(m.c1, m.c2);
  end when;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"9"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Checks that connect-equations are not allowed to be used
        inside if-equations with non-parametric conditions.</html>"));
end ConnectInWhen;
