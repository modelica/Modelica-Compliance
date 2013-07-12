within ModelicaCompliance.Components.Prefixes;

model OutputValidClassType
  extends Icons.TestCase;

  connector C
    Real e = 4.0;
  end C;

  output Real x = 3.0;
  output C c;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"4.4.2.2"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that the type prefix <pre>output</pre> can be applied to
        type and connector components.</html>"));
end OutputValidClassType;
