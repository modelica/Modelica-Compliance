within ModelicaCompliance.Connections.Declarations;

model ConnectArrays
  extends Icons.TestCase;

  connector C
    Real e;
    flow Real f;
  end C;

  model M
    C c[2];
    parameter Integer n = 1;
  equation
    c[n].e = 1.0;
    c[n].f = 2.0;
  end M;

  M m1(n = 1), m2(n = 2);
equation 
  connect(m1.c, m2.c);

  assert(Util.compareReal(m2.c[1].e, 1.0), "m2.c[1].e was given an incorrect value.");
  assert(Util.compareReal(m2.c[1].f, -2.0), "m2.c[1].f was given an incorrect value.");
  assert(Util.compareReal(m2.c[2].e, 1.0), "m2.c[2].e was given an incorrect value.");
  assert(Util.compareReal(m2.c[2].f, 2.0), "m2.c[2].f was given an incorrect value.");
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"9.1"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that it's possible to connect arrays.</html>"));
end ConnectArrays;
