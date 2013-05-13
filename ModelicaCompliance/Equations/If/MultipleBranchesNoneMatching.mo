within ModelicaCompliance.Equations.If;

model MultipleBranchesNoneMatching
  extends Icons.TestCase;

  Real x = 2.0;
  parameter Integer i = 4;
equation
  if i == 3 then
    x = 3.0;
    assert(false, "The first branch was erroneously selected.");
  elseif i == 5 then
    x = 4.0;
    assert(false, "The second branch was erroneously selected.");
  elseif i > 5 then
    x = 5.0;
    assert(false, "The third branch was erroneously selected.");
  end if;

  assert(abs(x - 2.0) < 1e-10, "x was not set correctly.");

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests an if-equation with multiple branches, where none of
        the branches should be selected.</html>"));
end MultipleBranchesNoneMatching;
