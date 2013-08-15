within ModelicaCompliance.Classes.Declarations.Short;

model VariabilityTypeComp
  extends Icons.TestCase;

  type ConstReal = constant Real;
  type ParamReal = parameter Real;
  type DiscReal = discrete Real;

  ConstReal ctr = 1.0;
  constant Real cr = ctr;
  ParamReal ptr = 2.0;
  parameter Real pr = ptr;
  DiscReal dtr;
  discrete Real dr;
algorithm
  when initial() then
    dtr := 3.0;
  end when;

  when initial() then
    dr := dtr;
  end when;
    
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"4.5.1"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that variability prefixes on short class definitions are
        applied to components declared of that type.</html>"));
end VariabilityTypeComp;
