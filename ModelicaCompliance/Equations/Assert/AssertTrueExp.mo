within ModelicaCompliance.Equations.Assert;

model AssertTrueExp
  extends Icons.TestCase;

  Real x;
equation
  x = 1 + abs(time);
  assert(x > 0.5, "This assert should not be triggered.");

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"8.3.7"})),
    experiment(StopTime = 1),
    Documentation(
      info = "<html>Checks that asserts with a non-constant condition that never
        becomes true are not triggered.</html>"));
end AssertTrueExp;
