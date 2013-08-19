within ModelicaCompliance.Classes.Specialized;

model ConnectorInitialEquation
  extends Icons.TestCase;

  connector C
    Real e;
    flow Real f;
  initial equation
    e = 1.0;
  end C;

  C c;
equation
  der(c.e) = 1.0;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"4.6"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Checks that initial equation sections are not allowed in connectors.</html>"));
end ConnectorInitialEquation;
