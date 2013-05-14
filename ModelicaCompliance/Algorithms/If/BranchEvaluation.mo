within ModelicaCompliance.Algorithms.If;

model BranchEvaluation
  extends Icons.TestCase;

  Real x;
  parameter Integer i = 4;
algorithm
  if i == 4 then
    x := 3.0;
  elseif i == 3 then
    assert(false, "This branch should not be evaluated.");
  end if;

  assert(Util.compareReal(x, 3.0), "x was not set correctly.");

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
    info = "<html>Checks that branches that are not selected doesn't have any
      effect on the model evaluation.</html>"));
end BranchEvaluation;
