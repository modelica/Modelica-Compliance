within ModelicaCompliance.Components.Prefixes;

model PrefixConflictFlowFlow2
  extends Icons.TestCase;

  connector C
    Real e;
    flow Real f;
  end C;

  flow C c;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"4.4.2.2"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that the type prefix <pre>flow</pre> is not allowed to
        be applied to a structured component if any of the elements of the
        component has a corresponding type prefix. There are two variations on
        this test, one with a binding on e and one without. This test does not
        have a binding on e to catch the case where <pre>flow</pre> on c is
        applied despite the conflict, which would generate two flow-equations.</html>"));
end PrefixConflictFlowFlow2;
