within ModelicaCompliance.Connections.Declarations;

model ConnectArraysIncompatible
  extends Icons.TestCase;

  connector C
    Real e;
    flow Real f;
  end C;

  model A
    C c[2];
  end A;

  model B
    C c[3];
  end B;

  A a;
  B b;
equation 
  a.c[1].e = 1.0;
  a.c[1].f = 2.0;
  b.c[2].e = 1.0;
  b.c[2].f = 2.0;
  b.c[3].e = 3.0;
  connect(a.c, b.c);

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"9.1"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Checks that the dimensions must match when connecting arrays.</html>"));
end ConnectArraysIncompatible;
