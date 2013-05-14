within ModelicaCompliance.Algorithms.If;

model SingleBranch
  extends Icons.TestCase;

  Real x;
  parameter Integer i = 4;
algorithm
  if i == 4 then
    x := 3.0;
  end if;

  assert(Util.compareReal(x, 3.0), "x was not set correctly.");

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that an if-statement can consist of a single branch.</html>"));
end SingleBranch;
