within ModelicaCompliance.Equations.If;

model TwoBranchesElseSelectFirst
  extends Icons.TestCase;

  Real x;
  parameter Integer i = 4;
equation
  if i == 4 then
    x = 3.0;
  else
    x = 4.0;
  end if;

  assert(Util.compareReal(x, 3.0), "x was not set correctly.");

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"8.3.4"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that an if-equation can have two branches with an
        else-branch, where the first branch is selected.</html>"));
end TwoBranchesElseSelectFirst;
