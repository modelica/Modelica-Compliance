within ModelicaCompliance.Equations.If;

model NonScalarCondition
  extends Icons.TestCase;

  Real x;
equation
  if {true, true} then
    x = 3.0;
  end if;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Checks that non-scalar conditions are detected.</html>"));
end NonScalarCondition;
