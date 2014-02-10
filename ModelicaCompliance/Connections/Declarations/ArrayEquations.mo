within ModelicaCompliance.Connections.Declarations;

model ArrayEquations
  extends Icons.TestCase;

  connector C
    Real e[3];
    flow Real f[3];
  end C;

  model M
    C c1, c2, c3;
  equation
    c1.e = {1.0, 2.0, 3.0};
    c1.f = {4.0, 5.0, 6.0};
    c2.f = {7.0, 8.0, 9.0};
  end M;

  M m;
equation 
  connect(m.c1, m.c2);
  connect(m.c2, m.c3);

  assert(Util.compareReal(m.c1.e[1],  1.0), "m.c1.e[1] was not set correctly.");
  assert(Util.compareReal(m.c1.e[2],  2.0), "m.c1.e[2] was not set correctly.");
  assert(Util.compareReal(m.c1.e[3],  3.0), "m.c1.e[3] was not set correctly.");
  assert(Util.compareReal(m.c2.e[1],  1.0), "m.c2.e[1] was not set correctly.");
  assert(Util.compareReal(m.c2.e[2],  2.0), "m.c2.e[2] was not set correctly.");
  assert(Util.compareReal(m.c2.e[3],  3.0), "m.c2.e[3] was not set correctly.");
  assert(Util.compareReal(m.c3.e[1],  1.0), "m.c3.e[1] was not set correctly.");
  assert(Util.compareReal(m.c3.e[2],  2.0), "m.c3.e[2] was not set correctly.");
  assert(Util.compareReal(m.c3.e[3],  3.0), "m.c3.e[3] was not set correctly.");

  assert(Util.compareReal(m.c1.f[1],  4.0), "m.c1.f[1] was not set correctly.");
  assert(Util.compareReal(m.c1.f[2],  5.0), "m.c1.f[2] was not set correctly.");
  assert(Util.compareReal(m.c1.f[3],  6.0), "m.c1.f[3] was not set correctly.");
  assert(Util.compareReal(m.c2.f[1],  7.0), "m.c2.f[1] was not set correctly.");
  assert(Util.compareReal(m.c2.f[2],  8.0), "m.c2.f[2] was not set correctly.");
  assert(Util.compareReal(m.c2.f[3],  9.0), "m.c2.f[3] was not set correctly.");
  assert(Util.compareReal(m.c3.f[1],-11.0), "m.c3.f[1] was not set correctly.");
  assert(Util.compareReal(m.c3.f[2],-13.0), "m.c3.f[2] was not set correctly.");
  assert(Util.compareReal(m.c3.f[3],-15.0), "m.c3.f[3] was not set correctly.");

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"9.2"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests the generation of connection equations for connectors
        with array components.</html>"));
end ArrayEquations;
