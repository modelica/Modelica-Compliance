within ModelicaCompliance.Arrays.Operations.Assignment;

model ArrayAssignment
  extends Icons.TestCase;

  Real x[4], y[4];
algorithm
  x := {time, 2 * time, 3 * time, 4 * time};
  y := x;

  assert(Util.compareReal(x[1], time    ), "x[1] was not set correctly.");
  assert(Util.compareReal(x[2], time * 2), "x[2] was not set correctly.");
  assert(Util.compareReal(x[3], time * 3), "x[3] was not set correctly.");
  assert(Util.compareReal(x[4], time * 4), "x[4] was not set correctly.");

  assert(Util.compareReal(y[1], time    ), "y[1] was not set correctly.");
  assert(Util.compareReal(y[2], time * 2), "y[2] was not set correctly.");
  assert(Util.compareReal(y[3], time * 3), "y[3] was not set correctly.");
  assert(Util.compareReal(y[4], time * 4), "y[4] was not set correctly.");

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"10.6.1"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests array assignment in algorithm sections.</html>"));
end ArrayAssignment;
