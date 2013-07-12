within ModelicaCompliance.Components.Prefixes;

model FlowNonReal
  extends Icons.TestCase;

  connector C
    flow Integer f;
    Real e = 2.0;
  end C;

  C c;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"4.4.2.2"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that a variable declared with the type prefix
        <pre>flow</pre> is not allowed to be of a type that is not a subtype of
        Real.</html>"));
end FlowNonReal;
