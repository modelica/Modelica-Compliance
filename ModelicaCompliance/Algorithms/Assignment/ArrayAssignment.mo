within ModelicaCompliance.Algorithms.Assignment;

model ArrayAssignment
  extends Icons.TestCase;

  Real x[4], y[4];
algorithm
  x := {time, 2 * time, 3 * time, 4 * time};
  y := x;

  assert(abs(x[1] - time    ) <= 1e-10, "x[1] was not set correctly.");
  assert(abs(x[2] - time * 2) <= 1e-10, "x[2] was not set correctly.");
  assert(abs(x[3] - time * 3) <= 1e-10, "x[3] was not set correctly.");
  assert(abs(x[4] - time * 4) <= 1e-10, "x[4] was not set correctly.");

  assert(abs(y[1] - time    ) <= 1e-10, "y[1] was not set correctly.");
  assert(abs(y[2] - time * 2) <= 1e-10, "y[2] was not set correctly.");
  assert(abs(y[3] - time * 3) <= 1e-10, "y[3] was not set correctly.");
  assert(abs(y[4] - time * 4) <= 1e-10, "y[4] was not set correctly.");

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests array assignment in algorithm sections.</html>"));
end ArrayAssignment;
