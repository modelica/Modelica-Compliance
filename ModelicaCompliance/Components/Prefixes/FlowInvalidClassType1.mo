within ModelicaCompliance.Components.Prefixes;

model FlowInvalidClassType1
  extends Icons.TestCase;

  model M
    Real x;
  end M;

  connector C
    Real e = 1.0;
    flow M m;
  end C;

  C c;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"4.4.2.2"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that the type prefix <pre>flow</pre> is only allowed
        to be applied to type, record and connector components, and not e.g.
        model components. There's two variants of this test with the difference
        being if x is given a binding or not. This case does not have a binding
        on x, to catch the case where <pre>flow</pre> is applied on a model
        component and a flow equation is generated.</html>"));
end FlowInvalidClassType1;
