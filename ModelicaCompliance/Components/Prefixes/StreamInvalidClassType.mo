within ModelicaCompliance.Components.Prefixes;

model StreamInvalidClassType
  extends Icons.TestCase;

  model M
    Real x = 2.0;
  end M;

  connector C
    Real e = 1.0;
    flow Real f;
    stream M m;
  end C;

  C c;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"4.4.2.2"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that the type prefix <pre>stream</pre> is only allowed
        to be applied to type, record and connector components, and not e.g.
        model components.</html>"));
end StreamInvalidClassType;
