within ModelicaCompliance.Connections.Declarations;

model UnconnectedFlow
  extends Icons.TestCase;

  connector C
    Real e;
    flow Real f;
  end C;

  C c(e = 1.0);
equation
  assert(Util.compareReal(c.f, 0.0), "c.f was not set correctly.");

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"9.2"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Checks that a zero-sum equation is generated for an
        unconnected flow variable.</html>"));
end UnconnectedFlow;
