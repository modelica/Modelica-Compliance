within ModelicaCompliance.Connections.Stream;

model InStreamTwoInside
  extends Icons.TestCase;

  connector S
    Real r;
    flow Real f;
    stream Real s;
  end S;

  model A
    S s;
    Real instream_s;
  equation
    instream_s = inStream(s.s);
  end A;

  A a1, a2;
  Real instream_s_a1;
  Real instream_s_a2;
equation
  connect(a1.s, a2.s);
  instream_s_a1 = inStream(a1.s.s);
  instream_s_a2 = inStream(a2.s.s);
  a1.s.r = 1.0;
  a1.s.f = 2.0;
  a1.s.s = 3.0;
  a2.s.s = 4.0;

  assert(Util.compareReal(a1.instream_s, a2.s.s), "a1.instream_s was not set correctly.");
  assert(Util.compareReal(a2.instream_s, a1.s.s), "a2.instream_s was not set correctly.");
  assert(Util.compareReal(instream_s_a1, a2.s.s), "instream_s_a1 was not set correctly.");
  assert(Util.compareReal(instream_s_a2, a1.s.s), "instream_s_a2 was not set correctly.");

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"15.2"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests the inStream operator on a set of two inside connectors.</html>"));
end InStreamTwoInside;
