within ModelicaCompliance.Algorithms.For;

model MultiEq
  extends Icons.TestCase;

  Real x[10];
  Real y[10];
algorithm
  for i in 1:10 loop
    x[i] := time * i;
    y[i] := i * x[i];
  end for;

  
  assert(Util.compareReal(x[1], time),         "x[1] was not set correctly.");
  assert(Util.compareReal(x[2], 2.0 * time),   "x[2] was not set correctly.");
  assert(Util.compareReal(x[3], 3.0 * time),   "x[3] was not set correctly.");
  assert(Util.compareReal(x[4], 4.0 * time),   "x[4] was not set correctly.");
  assert(Util.compareReal(x[5], 5.0 * time),   "x[5] was not set correctly.");
  assert(Util.compareReal(x[6], 6.0 * time),   "x[6] was not set correctly.");
  assert(Util.compareReal(x[7], 7.0 * time),   "x[7] was not set correctly.");
  assert(Util.compareReal(x[8], 8.0 * time),   "x[8] was not set correctly.");
  assert(Util.compareReal(x[9], 9.0 * time),   "x[9] was not set correctly.");
  assert(Util.compareReal(x[10], 10.0 * time), "x[10] was not set correctly.");

  assert(Util.compareReal(y[1], x[1]),          "y[1] was not set correctly.");
  assert(Util.compareReal(y[2], 2.0 * x[2]),    "y[2] was not set correctly.");
  assert(Util.compareReal(y[3], 3.0 * x[3]),    "y[3] was not set correctly.");
  assert(Util.compareReal(y[4], 4.0 * x[4]),    "y[4] was not set correctly.");
  assert(Util.compareReal(y[5], 5.0 * x[5]),    "y[5] was not set correctly.");
  assert(Util.compareReal(y[6], 6.0 * x[6]),    "y[6] was not set correctly.");
  assert(Util.compareReal(y[7], 7.0 * x[7]),    "y[7] was not set correctly.");
  assert(Util.compareReal(y[8], 8.0 * x[8]),    "y[8] was not set correctly.");
  assert(Util.compareReal(y[9], 9.0 * x[9]),    "y[9] was not set correctly.");
  assert(Util.compareReal(y[10], 10.0 * x[10]), "y[10] was not set correctly.");

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"11.2.2"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Checks that it's possible to have multiple statements inside a for-statement.</html>"));
end MultiEq;
