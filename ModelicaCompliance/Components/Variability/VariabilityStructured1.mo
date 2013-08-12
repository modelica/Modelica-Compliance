within ModelicaCompliance.Components.Variability;

model VariabilityStructured1
  extends Icons.TestCase;

  record R
    constant Real x = 1.0;
    parameter Real y = 2.0;
  end R;

  parameter R r;
  constant Real z = r.x;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"4.4.4.1"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that the variability prefix of a structured component
        is only applied to the elements which has a less restrictive variability
        prefix. I.e. the <pre>parameter</pre> prefix of r should not overwrite
        the <pre>constant</pre> prefix of r.x.</html>"));
end VariabilityStructured1;
