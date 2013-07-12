within ModelicaCompliance.Components.Variability;

model VariabilityStructured2
  extends Icons.TestCase;

  record R
    constant Real x = 1.0;
    parameter Real y = 2.0;
    Real z;
  end R;

  constant R r(x = 3.0);
  constant Real u = r.x;
  constant Real v = r.y;
  constant Real w = r.z;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"4.4.4.1"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that the variability prefix of a structured component
        is applied to the elements of the component if they have a less
        restrictive variability prefix than the component itself.</html>"));
end VariabilityStructured2;
