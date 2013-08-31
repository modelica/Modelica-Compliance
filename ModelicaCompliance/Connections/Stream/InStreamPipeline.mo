within ModelicaCompliance.Connections.Stream;

model InStreamPipeline
  extends Icons.TestCase;

  connector S
    flow Real f;
    Real e;
    stream Real s;
  end S;

  model A
    S s1;
    S s2;
    Real s1_instream;
    Real s2_instream;
  equation
    connect(s1, s2);
    s1_instream = inStream(s1.s);
    s2_instream = inStream(s2.s);
  end A;

  model B
    S s;
  equation
    s.f = 1;
    s.s = 10;
  end B;

  model C
    S s;
  equation
    s.e = 0;
    s.s = 20;
  end C;

  A a1;
  A a2;
  B b;
  C c;
equation
  connect(b.s, a1.s1);
  connect(a1.s2, a2.s1);
  connect(a2.s2, c.s);

  assert(Util.compareReal(a1.s1_instream, b.s.s), "a1.s1_instream was not set correctly.");
  assert(Util.compareReal(a1.s2_instream, a2.s1.s), "a1.s2_instream was not set correctly.");
  assert(Util.compareReal(a2.s1_instream, a1.s2.s), "a2.s1_instream was not set correctly.");
  assert(Util.compareReal(a2.s2_instream, c.s.s), "a2.s2_instream was not set correctly.");

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"15.2"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests the inStream operator on a pipeline model where the
        stream just passes through some components.</html>"));
end InStreamPipeline;
