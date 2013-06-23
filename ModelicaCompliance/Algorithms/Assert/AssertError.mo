within ModelicaCompliance.Algorithms.Assert;

model AssertError
  extends Icons.TestCase;
algorithm
  assert(false, "This assert should be triggered.", AssertionLevel.error);

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"8.3.7", "11.2.8.2"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Checks that the assertion level can be set to
        AssertionLevel.error.</html>"));
end AssertError;
