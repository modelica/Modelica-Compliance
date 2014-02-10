within ModelicaCompliance.Connections.Declarations;

model ConnectWholeDim
  extends Icons.TestCase;

  connector C
    Real e;
    flow Real f;
  end C;

  model M
    C c[2];
  equation
    c[1].e = c[1].f;
    c[2].e = c[2].f;
  end M;

  parameter Integer n = 2;
  M m1, m2;
equation 
  connect(m1.c[:], m2.c[1:2]);

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"9.1"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that connector references in connect may use the :
        operator.</html>"));
end ConnectWholeDim;
