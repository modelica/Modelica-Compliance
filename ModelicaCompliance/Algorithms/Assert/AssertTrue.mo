within ModelicaCompliance.Algorithms.Assert;

model AssertTrue
  extends Icons.TestCase;
algorithm
  assert(true, "This assert shouldn't be triggered.");

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"8.3.7", "11.2.8.2"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Checks that asserts where the condition is constant true
        aren't triggered.</html>"));
end AssertTrue;
