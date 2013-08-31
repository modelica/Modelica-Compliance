within ModelicaCompliance.Connections.Restrictions;

model ConnectMismatchCausal
  extends Icons.TestCase;

  connector C1
    input Real x;
    Real e;
    flow Real f;
  end C1;

  connector C2
    Real x;
    output Real e;
    flow Real f;
  end C2;

  model M
    C1 c1;
    C2 c2;
  end M;

  M m;
equation 
  connect(m.c1, m.c2);
  m.c1.e = 1.0;
  m.c1.f = 2.0;
  m.c1.x = 3.0;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"9.3"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Checks that causal variables may only connect to other
        causal variables.</html>"));
end ConnectMismatchCausal;
