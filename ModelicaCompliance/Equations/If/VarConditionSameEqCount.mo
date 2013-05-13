within ModelicaCompliance.Equations.If;

model VarConditionSameEqCount
  extends Icons.TestCase;

  Real x(start = 0.0), y(start = 2.0);
equation
  if x < 1.0 then
    x = time;
    y = y + x;
  else
    x = 1.0;
    y = der(y);
  end if;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that an if-equation with variable conditions is legal
        only if each branch has the same number of equations.</html>"));
end VarConditionSameEqCount;
