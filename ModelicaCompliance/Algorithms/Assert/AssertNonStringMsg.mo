within ModelicaCompliance.Algorithms.Assert;

model AssertNonStringMsg
  extends Icons.TestCase;
algorithm
  assert(false, 42);

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"8.3.7", "11.2.8.2"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Checks that the message of the assert is not allowed to be a
        non-string expression.</html>"));
end AssertNonStringMsg;
