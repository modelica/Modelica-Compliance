within ModelicaCompliance.Algorithms.Assert;

model AssertNonBoolCond
  extends Icons.TestCase;
algorithm
  assert(1, "This assert shouldn't pass type checking.");

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"8.3.7", "11.2.8.2"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Checks that the condition of the assert must be a boolean
        expression. It's impossible to check that only booleans are accepted, so
        1 is used since it's one of the more likely non-boolean expressions to be
        erroneously accepted.</html>"));
end AssertNonBoolCond;
