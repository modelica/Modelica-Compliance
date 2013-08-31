within ModelicaCompliance.Connections.Restrictions;

model ConnectNonConnector
  extends Icons.TestCase;

  Real x, y;
equation 
  x = 1.0;
  connect(x, y);

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"9.1"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Checks that the arguments to connect are not allowed to be
        something other than connector references.</html>"));
end ConnectNonConnector;
