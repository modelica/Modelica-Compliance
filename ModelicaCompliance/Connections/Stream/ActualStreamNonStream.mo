within ModelicaCompliance.Connections.Stream;

model ActualStreamNonStream
  extends Icons.TestCase;

  connector C
    Real r;
    flow Real f;
  end C;

  C c(r = 1.0);
  Real a = actualStream(c);

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"15.3"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Checks that the argument to the actualStream operator must
        be a stream connector.</html>"));
end ActualStreamNonStream;
