within ModelicaCompliance.Connections.Expandable;

model ConnectDisjointExpandables
  extends Icons.TestCase;

  expandable connector EC1
    Real x;
  end EC1;

  expandable connector EC2
    Real y;
  end EC2;

  model M
    connector RealOutput = output Real;
    RealOutput x = 1.0;
    RealOutput y = 2.0;
    EC1 ec1;
    EC2 ec2;
  equation
    connect(x, ec1.x);
    connect(y, ec2.y);
    connect(ec1, ec2);
  end M;

  M m;

  annotation (
  __ModelicaAssociation(TestCase(shouldPass = true, section = {"9.1.3"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that it's possible to connect two expandable
        connectors which doesn't have any declared components in common.</html>"));
end ConnectDisjointExpandables;
