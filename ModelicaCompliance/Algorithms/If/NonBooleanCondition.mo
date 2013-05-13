within ModelicaCompliance.Algorithms.If;

model NonBooleanCondition
  extends Icons.TestCase;

  Real x;
  parameter Integer i = 1;
algorithm
  if i then
    x := 3.0;
  end if;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Checks that non-boolean conditions are detected.</html>"));
end NonBooleanCondition;
