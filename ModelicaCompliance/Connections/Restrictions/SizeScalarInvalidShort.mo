within ModelicaCompliance.Connections.Restrictions;

model SizeScalarInvalidShort
  extends Icons.TestCase;

  connector C = Real;
  C c;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"9.3.1"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that a connector class defined by a short class
        definition is invalid if it has no prefix, since it must have the same
        number of flow variables as non-prefixed variables.</html>"));
end SizeScalarInvalidShort;
