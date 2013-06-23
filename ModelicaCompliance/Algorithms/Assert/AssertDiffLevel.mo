within ModelicaCompliance.Algorithms.Assert;

model AssertDiffLevel
  extends Icons.TestCase;
 
  Real x(start = 0);
algorithm
  x := time;
  assert(x < 0.5, "Warning: x became larger than 0.5", AssertionLevel.warning);
  assert(x < 0.6, "Error: x became larger than 0.6");

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"8.3.7", "11.2.8.2"})),
    experiment(StopTime = 1),
    Documentation(
      info = "<html>Checks that both warning and error asserts can be used in
        the model.</html>"));
end AssertDiffLevel;
