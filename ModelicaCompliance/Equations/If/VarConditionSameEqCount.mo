within ModelicaCompliance.Equations.If;

model VarConditionSameEqCount
  extends Icons.TestCase;

  Real x, y;
equation
  if x < 1.0 then
    x = time;
    y = x + 1.0;
  else
    x = 2 - time;
    y = x + 1.0;
  end if;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that an if-equation with variable conditions is legal
        only if each branch has the same number of equations.</html>"));
end VarConditionSameEqCount;
