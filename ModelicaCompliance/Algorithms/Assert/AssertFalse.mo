within ModelicaCompliance.Algorithms.Assert;

model AssertFalse
  extends Icons.TestCase;
algorithm
  assert(false, "This assert should be triggered.");

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Checks that asserts where the condition is constant false
        are triggered.</html>"));
end AssertFalse;
