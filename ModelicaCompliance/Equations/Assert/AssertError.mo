within ModelicaCompliance.Equations.Assert;

model AssertError
  extends Icons.TestCase;
equation
  assert(false, "This assert should be triggered.", AssertionLevel.error);

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"8.3.7"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Checks that the assertion level can be set to
        AssertionLevel.error.</html>"));
end AssertError;
