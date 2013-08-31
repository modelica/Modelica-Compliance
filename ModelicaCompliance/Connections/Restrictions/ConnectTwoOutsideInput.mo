within ModelicaCompliance.Connections.Restrictions;

model ConnectTwoOutsideInput
  extends Icons.TestCase;

  connector C
    input Real x;
  end C;

  model M
    C c1(x = 1.0), c2;
  equation
    connect(c1, c2);
  end M;

  M m;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"9.3"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Checks that a connection set isn't allowed to contain more
        than one inside output connector.</html>"));
end ConnectTwoOutsideInput;
