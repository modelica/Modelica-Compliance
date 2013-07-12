within ModelicaCompliance.Components.Prefixes;

model OutputInvalidClassType
  extends Icons.TestCase;

  model A
    Real x = 1.0;
  end A;

  output A a;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"4.4.2.2"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that the type prefix <pre>output</pre> is only
        allowed to be applied to type, record and connector components, and not
        e.g. model components.</html>"));
end OutputInvalidClassType;
