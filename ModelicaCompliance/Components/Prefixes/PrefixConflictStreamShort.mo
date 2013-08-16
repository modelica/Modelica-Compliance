within ModelicaCompliance.Components.Prefixes;

model PrefixConflictStreamShort
  extends Icons.TestCase;

  connector C
    Real e = 1.0;
    flow Real f;
    stream Real s = 2.0;
  end C;

  connector StreamC = stream C;

  connector C2
    Real e = 3.0;
    flow Real f;
    StreamC c;
  end C2;

  C2 c2;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"4.4.2.2", "4.5.1"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests the rule that a type prefix is not allowed to be
      applied to a structured component if any of the elements of the component
      has a corresponding type prefix, using a short class definition to apply
      the prefix. In this case stream on flow/stream.</html>"));
end PrefixConflictStreamShort;
