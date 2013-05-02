within ModelicaCompliance.Algorithms.Assert;

model AssertTrueExp
  extends Icons.TestCase;

  Real x(start = 1.0);
algorithm
  x := der(x);
  assert(x > 0.5, "This assert should not be triggered.");

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 1),
    Documentation(
      info = "<html>Checks that asserts with a non-constant condition that never
        becomes true are not triggered.</html>"));
end AssertTrueExp;
