within ModelicaCompliance.Components.Prefixes;

model DiscreteInvalidClassType
  extends Icons.TestCase;

  model M
    Real x;
  end M;

  discrete M m;
equation
  when true then
    m.x = 1.0;
  end when;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"4.4.2.2"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that the type prefix <pre>discrete</pre> is only
        allowed to be applied to type, record and connector components, and not
        e.g. model components.</html>"));
end DiscreteInvalidClassType;
