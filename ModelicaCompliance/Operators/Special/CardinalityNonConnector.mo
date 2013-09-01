within ModelicaCompliance.Operators.Special;

model CardinalityNonConnector
  extends Icons.TestCase;

  Real x = 1.0;
  Integer n = cardinality(x);

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"3.7.2"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Checks that cardinality is only allowed on connectors.</html>"));
end CardinalityNonConnector;
