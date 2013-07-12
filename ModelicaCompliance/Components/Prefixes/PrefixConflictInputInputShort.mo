within ModelicaCompliance.Components.Prefixes;

model PrefixConflictInputInputShort
  extends Icons.TestCase;

  connector RealInput = input Real;
  input RealInput x = 2.0;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"4.4.2.2"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that a structured component is not allowed to be
        prefixed with the type prefix <pre>input</pre> if any of the elements in
        the component already has a corresponding prefix. This test checks the
        case where the structured component is defined by a short class
        definition prefixed with <pre>input</pre>.</html>"));
end PrefixConflictInputInputShort;
