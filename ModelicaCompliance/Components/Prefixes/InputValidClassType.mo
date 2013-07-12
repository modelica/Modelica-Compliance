within ModelicaCompliance.Components.Prefixes;

model InputValidClassType
  extends Icons.TestCase;

  connector C
    Real e = 4.0;
  end C;

  model M
    input Real x = 3.0;
    input C c;
  end M;

  M m;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"4.4.2.2"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that the type prefix <pre>input</pre> can be applied to
        type and connector components.</html>"));
end InputValidClassType;
