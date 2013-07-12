within ModelicaCompliance.Components.Prefixes;

model PrefixConflictMixed
  extends Icons.TestCase;

  connector C
    Real e;
    flow Real f;
    input Real x;
    output Real y;
  end C;

  flow input C c(e = 1.0, x = 2.0, y = 3.0);

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"4.4.2.2"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that a structured component is not allowed to be
      prefixed with a type prefix if any of the elements in the component
      already has a corresponding prefix. This test checks the case where
      there's multiple prefix conflicts.</html>"));
end PrefixConflictMixed;
