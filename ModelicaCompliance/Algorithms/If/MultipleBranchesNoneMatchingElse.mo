within ModelicaCompliance.Algorithms.If;

model MultipleBranchesNoneMatchingElse
  extends Icons.TestCase;

  Real x;
  parameter Integer i = 4;
algorithm
  if i == 3 then
    x := 3.0;
  elseif i == 5 then
    x := 4.0;
  elseif i > 5 then
    x := 5.0;
  else
    x := 2.0;
  end if;

  assert(abs(x - 2.0) < 1e-10, "x was not set correctly.");

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests an if-statement with multiple branches, where none of
        the conditions are true but an else-clause is present.</html>"));
end MultipleBranchesNoneMatchingElse;
