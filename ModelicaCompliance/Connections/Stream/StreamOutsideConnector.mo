within ModelicaCompliance.Connections.Stream;

model StreamOutsideConnector
  extends Icons.TestCase;

  stream Real x = 1.0;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"15.1"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Checks that the stream prefix is only allowed to be used
        in connector declarations.</html>"));
end StreamOutsideConnector;
