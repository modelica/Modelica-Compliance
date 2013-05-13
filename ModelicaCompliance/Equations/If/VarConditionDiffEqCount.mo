within ModelicaCompliance.Equations.If;

model VarConditionDiffEqCount
  extends Icons.TestCase;

  Real x(start = 0.0), y(start = 2.0);
equation
  if x < 1.0 then
    x = time;
    y = y + x;
  else
    x = 1.0;
  end if;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false)),
    experiment(StopTime = 0.01),
    Documentation(
    info = "<html>Tests that an if-equation with variable conditions must have
      the same number of equations in each branch.</html>"));
end VarConditionDiffEqCount;
