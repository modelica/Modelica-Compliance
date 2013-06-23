within ModelicaCompliance.Algorithms.Assert;

model AssertFalse
  extends Icons.TestCase;
algorithm
  assert(false, "This assert should be triggered.");

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"8.3.7", "11.2.8.2"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Checks that asserts where the condition is constant false
        are triggered.</html>"));
end AssertFalse;
