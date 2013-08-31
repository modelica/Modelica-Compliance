within ModelicaCompliance.Connections.Stream;

model StreamConnectorMissingFlow
  extends Icons.TestCase;

  connector S
    stream Real s;
  end S;

  S s(s = 1.0);

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"15.1"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Checks that a stream connector must have exactly one flow variable.</html>"));
end StreamConnectorMissingFlow;
