within ModelicaCompliance.Connections.Declarations;

model UnconnectedInsideFlow
  extends Icons.TestCase;

  connector C
    Real e;
    flow Real f;
  end C;

  C c1, c2;
equation
  connect(c1, c2);
  c1.e = 1.0;
  c1.f = 2.0;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"9.2"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Checks that zero-sum equations are still generated for flow
        variables which haven't been connected as inside but as outside.</html>"));
end UnconnectedInsideFlow;
