within ModelicaCompliance.Connections.Restrictions;

model ConnectTwoInsideOutput
  extends Icons.TestCase;

  connector C
    output Real x;
  end C;

  model M
    C c1, c2;
  end M;

  M m;
equation
  connect(m.c1, m.c2);
  m.c1.x = 1.0;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"9.3"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Checks that a connection set isn't allowed to contain more
        than one inside output connector.</html>"));
end ConnectTwoInsideOutput;
