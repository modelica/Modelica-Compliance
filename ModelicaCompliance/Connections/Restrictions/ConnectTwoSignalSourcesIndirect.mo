within ModelicaCompliance.Connections.Restrictions;

model ConnectTwoSignalSourcesIndirect
  extends Icons.TestCase;

  connector RealInput = input Real;
  connector RealOutput = output Real;

  model A
    model B
      RealOutput ro;
      RealInput ri;
    end B;

    B b;
    RealInput ri = 1.0;
  equation
    connect(ri, b.ri);
    connect(b.ri, b.ro);
  end A;

  A a;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"9.3"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Checks that a connection set isn't allowed to contain more
        than one source of signal (inside output or outside input). This test
        checks that this restriction is also checked when the connectors are not
        connected directly to each other.</html>"));
end ConnectTwoSignalSourcesIndirect;
