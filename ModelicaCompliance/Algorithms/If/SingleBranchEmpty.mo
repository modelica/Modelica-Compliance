within ModelicaCompliance.Algorithms.If;

model SingleBranchEmpty
  extends Icons.TestCase;

  Real x = 3.0;
  parameter Integer i = 4;
algorithm
  if i == 4 then
  end if;

  assert(abs(x - 3.0) < 1e-10, "x was not set correctly.");

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that an if-statement can consist of a single branch.</html>"));
end SingleBranchEmpty;
