within ModelicaCompliance.Connections.Expandable;

model ConnectTwoUndeclared
  extends Icons.TestCase;

  expandable connector EC
  end EC;

  EC ec1, ec2;
equation
  connect(ec1.undeclared, ec2.undeclared);

  annotation (
  __ModelicaAssociation(TestCase(shouldPass = false, section = {"9.1.3"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Checks that one of the connectors in a connect equation must
        reference a declared component.</html>"));
end ConnectTwoUndeclared;
