within ModelicaCompliance.Algorithms.Assert;

model AssertFalseExp
  extends Icons.TestCase;

  Real x;
algorithm
  x := 1 - abs(time);
  assert(x > 0.5, "This assert should be triggered.");

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false)),
    experiment(StopTime = 1),
    Documentation(
      info = "<html>Checks that asserts where the condition becomes false during
        simulation are triggered.</html>"));
end AssertFalseExp;
