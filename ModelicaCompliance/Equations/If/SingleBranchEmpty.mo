within ModelicaCompliance.Equations.If;

model SingleBranchEmpty
  extends Icons.TestCase;

  Real x = 3.0;
  parameter Integer i = 4;
equation
  if i == 4 then
  end if;

  assert(Util.compareReal(x, 3.0), "x was not set correctly.");

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that an if-equation can consist of a single branch.</html>"));
end SingleBranchEmpty;
