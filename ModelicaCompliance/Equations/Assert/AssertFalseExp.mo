within ModelicaCompliance.Equations.Assert;

model AssertFalseExp
  extends Icons.TestCase;

  Real x;
equation
  x = 1 - abs(time);
  assert(x > 0.5, "This assert should be triggered.");

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"8.3.7"})),
    experiment(StopTime = 1),
    Documentation(
      info = "<html>Checks that asserts where the condition becomes false during
        simulation are triggered.</html>"));
end AssertFalseExp;
