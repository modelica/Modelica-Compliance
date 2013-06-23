within ModelicaCompliance.Algorithms.Assert;

model AssertTrueExp
  extends Icons.TestCase;

  Real x;
algorithm
  x := 1 + abs(time);
  assert(x > 0.5, "This assert should not be triggered.");

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"8.3.7", "11.2.8.2"})),
    experiment(StopTime = 1),
    Documentation(
      info = "<html>Checks that asserts with a non-constant condition that never
        becomes true are not triggered.</html>"));
end AssertTrueExp;
