within ModelicaCompliance.Algorithms.If;

model TwoBranchesElseSelectSecond
  extends Icons.TestCase;

  Real x;
  parameter Integer i = 5;
algorithm
  if i == 4 then
    x := 3.0;
  else
    x := 4.0;
  end if;

  assert(Util.compareReal(x, 4.0), "x was not set correctly.");

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"11.2.6"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that an if-statement can have two branches with an
        else-branch, where the second branch is selected.</html>"));
end TwoBranchesElseSelectSecond;
