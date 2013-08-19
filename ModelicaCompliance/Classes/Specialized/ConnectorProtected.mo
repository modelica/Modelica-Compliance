within ModelicaCompliance.Classes.Specialized;

model ConnectorProtected
  extends Icons.TestCase;

  connector C
    Real e = pe;
    flow Real f;
  protected
    constant Real pe = 4.2;
  end C;

  C c;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"4.6"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Checks that protected sections are not allowed in connectors.</html>"));
end ConnectorProtected;
