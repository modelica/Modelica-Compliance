within ModelicaCompliance.Components.Prefixes;

model StreamStructured
  extends Icons.TestCase;

  record R
    Real x = 2.0;
    Real y = 3.0;
  end R;

  connector C
    flow Real f;
    Real e = 1.0;
    stream R r;
  end C;

  C c;
  Real x = inStream(c.r.x);
  Real y = inStream(c.r.y);

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"4.4.2.2"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that the <pre>flow</pre> prefix is applied to the
        elements of a structured component. Otherwise the model should fail
        since the argument to inStream must be a stream variable.
        
        Note: The validity of this test depends on ticket #1196.</html>"));
end StreamStructured;
