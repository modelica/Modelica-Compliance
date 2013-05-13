within ModelicaCompliance.Equations.If;

model EvaluationOrder
  extends Icons.TestCase;

  function f
    output Boolean b;
  algorithm
    assert(false, "A condition that shouldn't be reached was evaluated.");
    b := true;
  end f;

  Real x;
  parameter Integer i = 4;
equation
  if i == 4 then
    x = 3.0;
  elseif f() then
    x = 4.0;
  end if;

  assert(abs(x - 3.0) < 1e-10, "x was not set correctly.");

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
    info = "<html>Checks that conditions are evaluated sequentially until one of
      them evaluates to true.</html>"));
end EvaluationOrder;
