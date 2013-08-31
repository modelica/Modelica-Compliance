within ModelicaCompliance.Connections.Stream;

model StreamConnector
  extends Icons.TestCase;

  connector S
    Real r;
    flow Real f;
    stream Real s;
  end S;

  S s(r = 1.0, s = 2.0);

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"15.1"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that it's possible to define a stream connector.</html>"));
end StreamConnector;
