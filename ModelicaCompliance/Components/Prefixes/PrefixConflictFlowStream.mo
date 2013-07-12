within ModelicaCompliance.Components.Prefixes;

model PrefixConflictFlowStream
  extends Icons.TestCase;

  connector C
    Real e = 1.0;
    flow Real f;
    stream Real s = 2.0;
  end C;

  flow C c;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"4.4.2.2"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that the type prefix <pre>flow</pre> is not allowed to
        be applied to a structured component if any of the elements of the
        component has a corresponding type prefix. This test might also fail due
        to the flow-flow conflict, but a stream connector must have a flow
        variable in it so there's no way to only test for a flow-stream conflict.</html>"));
end PrefixConflictFlowStream;
