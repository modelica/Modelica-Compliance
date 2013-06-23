within ModelicaCompliance.Equations.If;

model MultipleBranchesNoneMatchingElse
  extends Icons.TestCase;

  Real x;
  parameter Integer i = 4;
equation
  if i == 3 then
    x = 3.0;
  elseif i == 5 then
    x = 4.0;
  elseif i > 5 then
    x = 5.0;
  else
    x = 2.0;
  end if;

  assert(Util.compareReal(x, 2.0), "x was not set correctly.");

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"8.3.4"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests an if-equation with multiple branches, where none of
        the conditions are true but an else-clause is present.</html>"));
end MultipleBranchesNoneMatchingElse;
