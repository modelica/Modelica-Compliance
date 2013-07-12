within ModelicaCompliance.Components.Prefixes;

model FlowStructured
  extends Icons.TestCase;

  record R
    Real x;
    Real y;
  end R;

  connector C
    flow R r;
    Real z = 1.0;
    Real w = 2.0;
  end C;

  C c;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"4.4.2.2"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that the <pre>flow</pre> prefix is applied to the
        elements of a structured component. Otherwise the model should fail since
        it's not balanced if flow equations are not generated.
        
        Note: The validity of this test depends on ticket #1196.</html>"));
end FlowStructured;
