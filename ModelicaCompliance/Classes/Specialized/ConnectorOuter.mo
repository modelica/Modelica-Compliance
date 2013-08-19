within ModelicaCompliance.Classes.Specialized;

model ConnectorOuter
  extends Icons.TestCase;

  connector C
    outer Real e;
    flow Real f;
  end C;

  inner Real e = 1.0;
  C c;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"4.6"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Checks that elements with outer prefix are not allowed in connector.</html>"));
end ConnectorOuter;
