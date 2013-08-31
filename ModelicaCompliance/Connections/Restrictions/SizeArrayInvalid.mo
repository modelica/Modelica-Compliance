within ModelicaCompliance.Connections.Restrictions;

model SizeArrayInvalid
  extends Icons.TestCase;

  connector C
    Real e[2];
    flow Real f[3];
  end C;

  C c;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"9.3.1"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Checks that a connector class with records is rejected if it
        does not follow the size restrictions for connectors.</html>"));
end SizeArrayInvalid;
