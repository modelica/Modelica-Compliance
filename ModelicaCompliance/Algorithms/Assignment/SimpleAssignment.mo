within ModelicaCompliance.Algorithms.Assignment;

model SimpleAssignment
  extends Icons.TestCase;

  Real x;
algorithm
  x := 3.0;

  assert(abs(x - 3.0) <= 1e-10, "x was not set correctly.");

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
    info = "<html>Tests simple assignment in algorithm sections.</html>"));
end SimpleAssignment;
