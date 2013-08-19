within ModelicaCompliance.Classes.Specialized;

model ConnectorInner
  extends Icons.TestCase;

  connector C
    inner Real e = 2.54;
    flow Real f;
  end C;

  C c;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"4.6"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Checks that elements with inner prefix are not allowed in connectors.</html>"));
end ConnectorInner;
