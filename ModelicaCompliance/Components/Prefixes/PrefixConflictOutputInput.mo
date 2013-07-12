within ModelicaCompliance.Components.Prefixes;

model PrefixConflictOutputInput
  extends Icons.TestCase;

  connector C
    Real e;
    flow Real f;
    input Real x;
  end C;

  output C c(e = 1.0, x = 2.0);

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"4.4.2.2"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that a structured component is not allowed to be
        prefixed with the type prefix <pre>output</pre> if any of the elements in
        the component already has a corresponding prefix. This test checks the
        case where the structured component is defined by a long class
        where one of the elements is prefixed with <pre>input</pre>.</html>"));
end PrefixConflictOutputInput;
