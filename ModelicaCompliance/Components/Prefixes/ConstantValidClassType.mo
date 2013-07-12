within ModelicaCompliance.Components.Prefixes;

model ConstantValidClassType
  extends Icons.TestCase;

  record R
    Real x = 3.0;
  end R;

  constant R r;
  constant Real x = 3.0;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"4.4.2.2"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that the type prefix <pre>constant</pre> can be
        applied to type and record components (connector components may not be
          prefixed with <pre>constant</pre> according to 9.3).</html>"));
end ConstantValidClassType;
