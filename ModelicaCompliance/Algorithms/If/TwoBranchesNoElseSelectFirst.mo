within ModelicaCompliance.Algorithms.If;

model TwoBranchesNoElseSelectFirst
  extends Icons.TestCase;

  Real x;
  parameter Real r = 4.0;
algorithm
  if r < 5.0 then
    x := 3.0;
  elseif r > 4.0 then
    x := 4.0;
  end if;

  assert(abs(x - 3.0) < 1e-10, "x was not set correctly.");

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that an if-statement can have two branches but no
        else-branch, where the first branch should be selected.</html>"));
end TwoBranchesNoElseSelectFirst;
