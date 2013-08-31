within ModelicaCompliance.Connections.Declarations;

model ConnectNonParamSubscript
  extends Icons.TestCase;

  connector C
    Real e;
    flow Real f;
  end C;

  model M
    C c[2];
  end M;

  Integer n = 2;
  M m;
equation 
  m.c[1].e = 1.0;
  m.c[2].f = 2.0;
  connect(m.c[1], m.c[n]);

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"9.1"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that connector references in connect is not allowed to
        have non-parameter subscripts.</html>"));
end ConnectNonParamSubscript;
