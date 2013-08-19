within ModelicaCompliance.Classes.Specialized;

model ConnectorEquation
  extends Icons.TestCase;

  connector C
    Real e;
    flow Real f;
  equation
    e = 1.0;
  end C;

  C c;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"4.6"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Checks that equation sections are not allowed in connectors.</html>"));
end ConnectorEquation;
