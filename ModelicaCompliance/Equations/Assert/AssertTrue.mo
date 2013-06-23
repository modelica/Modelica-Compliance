within ModelicaCompliance.Equations.Assert;

model AssertTrue
  extends Icons.TestCase;
equation
  assert(true, "This assert shouldn't be triggered.");

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"8.3.7"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Checks that asserts where the condition is constant true
        aren't triggered.</html>"));
end AssertTrue;
