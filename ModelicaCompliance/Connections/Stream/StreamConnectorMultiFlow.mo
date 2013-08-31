within ModelicaCompliance.Connections.Stream;

model StreamConnectorMultiFlow
  extends Icons.TestCase;

  connector S
    Real e[2];
    flow Real f[2];
    stream Real s;
  end S;

  S s(e = {1.0, 2.0}, s = 3.0);

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"15.1"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Checks that a stream connector must have exactly one flow variable.</html>"));
end StreamConnectorMultiFlow;
