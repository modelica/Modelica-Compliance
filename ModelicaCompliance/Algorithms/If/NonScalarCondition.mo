within ModelicaCompliance.Algorithms.If;

model NonScalarCondition
  extends Icons.TestCase;

  Real x;
algorithm
  if {true, true} then
    x := 3.0;
  end if;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"11.2.6"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Checks that non-scalar conditions are detected.</html>"));
end NonScalarCondition;
