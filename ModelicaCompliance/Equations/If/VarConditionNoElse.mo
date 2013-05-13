within ModelicaCompliance.Equations.If;

model VarConditionNoElse
  extends Icons.TestCase;

  Real x(start = 0.0), y(start = 2.0);
equation
  if x < 1.0 then
    x = time;
    y = y + x;
  elseif x >= 1.0 then
    x = 1.0;
  end if;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that an if-equation with variable conditions must have
        an else branch.</html>"));
end VarConditionNoElse;
