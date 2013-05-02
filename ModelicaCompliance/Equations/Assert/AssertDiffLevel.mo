within ModelicaCompliance.Equations.Assert;

model AssertDiffLevel
  extends Icons.TestCase;
 
  Real x(start = 0);
equation
  x = time;
  assert(x < 0.5, "Warning: x became larger than 0.5", AssertionLevel.warning);
  assert(x < 0.6, "Error: x became larger than 0.6");

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false)),
    experiment(StopTime = 1),
    Documentation(
      info = "<html>Checks that both warning and error asserts can be used in
        the model.</html>"));
end AssertDiffLevel;
