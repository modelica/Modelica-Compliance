within ModelicaCompliance.Algorithms.Assignment;

model SimpleAssignment
  extends Icons.TestCase;

  Real x;
algorithm
  x := 3.0;

  assert(Util.compareReal(x, 3.0), "x was not set correctly.");

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"11.2.1"})),
    experiment(StopTime = 0.01),
    Documentation(
    info = "<html>Tests simple assignment in algorithm sections.</html>"));
end SimpleAssignment;
