within ModelicaCompliance.Connections.Restrictions;

model ConnectorParameter
  extends Icons.TestCase;

  connector C
    input Real x = 1.0;
  end C;

  parameter C c;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"9.3"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Checks that a connector component is not allowed to be
        declared as parameter.</html>"));
end ConnectorParameter;
