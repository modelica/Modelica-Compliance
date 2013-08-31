within ModelicaCompliance.Connections.Stream;

model ActualStreamSimple
  extends Icons.TestCase;

  connector S
    Real r;
    flow Real f;
    stream Real s;
  end S;

  model A
    S s1, s2;
  equation
    s1.r = 1.0;
    s1.s = 2.0;
    s2.f = 3.0;
    s2.s = 4.0;
  end A;

  A a;
  Real actual_stream_s1;
  Real actual_stream_s2;
equation
  connect(a.s1, a.s2);
  actual_stream_s1 = actualStream(a.s1.s);
  actual_stream_s2 = actualStream(a.s2.s);

  assert(Util.compareReal(actual_stream_s1, a.s1.s), "actual_stream_s1 was not set correctly.");
  assert(Util.compareReal(actual_stream_s2, a.s1.s), "actual_stream_s2 was not set correctly.");

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"15.3"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests the actualStream operator on a simple stream model.</html>"));
end ActualStreamSimple;
