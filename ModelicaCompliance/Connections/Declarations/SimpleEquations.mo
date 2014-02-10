within ModelicaCompliance.Connections.Declarations;

model SimpleEquations
  extends Icons.TestCase;

  connector C
    Real e;
    flow Real f;
  end C;

  model M
    C c1, c2, c3;
  equation
    c1.e = 2.0;
    c1.f = 3.0;
    c2.f = 4.0;
  end M;

  M m;
equation 
  connect(m.c1, m.c2);
  connect(m.c2, m.c3);

  assert(Util.compareReal(m.c1.e, 2.0), "m.c1.e was not set correctly.");
  assert(Util.compareReal(m.c2.e, 2.0), "m.c2.e was not set correctly.");
  assert(Util.compareReal(m.c3.e, 2.0), "m.c3.e was not set correctly.");
 
  assert(Util.compareReal(m.c1.f, 3.0), "m.c1.f was not set correctly.");
  assert(Util.compareReal(m.c2.f, 4.0), "m.c2.f was not set correctly.");
  assert(Util.compareReal(m.c3.f,-7.0), "m.c3.f was not set correctly.");

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"9.2"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests the generation of connection equations using simple
        connectors with scalar primitive components.</html>"));
end SimpleEquations;
