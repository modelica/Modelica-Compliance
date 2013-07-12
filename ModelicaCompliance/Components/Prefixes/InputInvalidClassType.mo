within ModelicaCompliance.Components.Prefixes;

model InputInvalidClassType
  extends Icons.TestCase;

  model A
    Real x = 1.0;
  end A;

  model B
    input A a;
  end B;

  B b;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"4.4.2.2"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that the type prefix <pre>input</pre> is only
        allowed to be applied to type, record and connector components, and not
        e.g. model components.</html>"));
end InputInvalidClassType;
