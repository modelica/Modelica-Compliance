within ModelicaCompliance.Algorithms.If;


model MultipleBranchesNoneMatching
  extends Icons.TestCase;

  Real x;
  Integer i = 4;
algorithm
  if i == 3 then
    x := 3.0;
    assert(false, "The first branch was erroneously selected.");
  elseif i == 5 then
    x := 4.0;
    assert(false, "The second branch was erroneously selected.");
  elseif i > 5 then
    x := 5.0;
    assert(false, "The third branch was erroneously selected.");
  end if;

  x := 2.0;

  assert(Util.compareReal(x, 2.0), "x was not set correctly.");

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"11.2.6"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests an if-statement with multiple branches, where none of
        the branches should be selected.</html>"));
end MultipleBranchesNoneMatching;
