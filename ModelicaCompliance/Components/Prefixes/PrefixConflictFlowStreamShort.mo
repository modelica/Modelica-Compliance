within ModelicaCompliance.Components.Prefixes;

model PrefixConflictFlowStreamShort
  extends Icons.TestCase;

  connector C
    Real e = 1.0;
    flow Real f;
    stream Real s = 2.0;
  end C;

  connector FlowC = flow C;
  FlowC c;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"4.4.2.2"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests the rule that a type prefix is not allowed to be
        applied to a structured component if any of the elements of the component
        has a correspondning type prefix, using a short class definition to apply
        the prefix. In this case flow on flow/stream.</html>"));
end PrefixConflictFlowStreamShort;
