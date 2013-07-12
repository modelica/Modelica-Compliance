within ModelicaCompliance.Components.Prefixes;

model PrefixConflictStream
  extends Icons.TestCase;

  connector C
    Real e = 1.0;
    flow Real f;
    stream Real s = 2.0;
  end C;

  connector C2
    Real e = 3.0;
    flow Real f;
    stream C c;
  end C2;

  C2 c2;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"4.4.2.2"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that the type prefix <pre>stream</pre> is not allowed to
        be applied to a structured component if any of the elements of the
        component has a corresponding type prefix.</html>"));
end PrefixConflictStream;
