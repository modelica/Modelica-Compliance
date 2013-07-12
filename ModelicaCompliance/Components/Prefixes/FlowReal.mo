within ModelicaCompliance.Components.Prefixes;

model FlowReal
  extends Icons.TestCase;

  connector C
    flow Real f;
    Real e = 2.0;
  end C;

  C c;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"4.4.2.2"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that it's possible to declare a variable of type Real
        with the type prefix <pre>flow</pre>.</html>"));
end FlowReal;
