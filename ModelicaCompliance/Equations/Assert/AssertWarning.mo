within ModelicaCompliance.Equations.Assert;

model AssertWarning
  extends Icons.TestCase;
 
  Real x(start = 0);
equation
  x = time;
  assert(x < 0.5, "This assert should be triggered.", AssertionLevel.warning);

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"8.3.7"})),
    experiment(StopTime = 1),
    Documentation(
      info = "<html>Checks that the assertion level can be set to
        AssertionLevel.warning. A warning should have no influence on the
        behavior of the model. So if the warning is triggered or not can't be
        tested, only that the assert doesn't abort the simulation as error
        would.</html>"));
end AssertWarning;
