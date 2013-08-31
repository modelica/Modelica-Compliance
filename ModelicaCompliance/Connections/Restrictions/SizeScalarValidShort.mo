within ModelicaCompliance.Connections.Restrictions;

model SizeScalarValidShort
  extends Icons.TestCase;

  connector RealInput = input Real;
  connector RealOutput = output Real;

  model M
    RealInput ri = 1.0;
    RealOutput ro = 2.0;
  end M;

  M m;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"9.3.1"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that a connector class defined by a short class
        definition is allowed if it has a causal prefix.</html>"));
end SizeScalarValidShort;
