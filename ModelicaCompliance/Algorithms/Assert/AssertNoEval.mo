within ModelicaCompliance.Algorithms.Assert;

model AssertNoEval
  extends Icons.TestCase;

  function genMsg
    output String msg;
  algorithm
    msg := "dummy";
    assert(false, "The message of assert was evaluated when the assertion was true!");
  end genMsg;

algorithm
  assert(true, genMsg());

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Checks that the message expression isn't evaluated when the
        condition of an assertion is true.</html>"));
end AssertNoEval;
