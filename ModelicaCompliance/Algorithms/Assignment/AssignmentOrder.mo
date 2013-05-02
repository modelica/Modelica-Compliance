within ModelicaCompliance.Algorithms.Assignment;

model AssignmentOrder
  extends Icons.TestCase;

  Real x;
algorithm
  x := 3.0;
  assert(abs(x - 3.0) <= 1e-10, "x was not set correctly.");
  x := 4.0;
  assert(abs(x - 4.0) <= 1e-10, "x was not set correctly.");
  x := 5.0;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
    info = "<html>Tests that assignments in an algorithm section are performed
      in the given order.</html>"));
end AssignmentOrder;
