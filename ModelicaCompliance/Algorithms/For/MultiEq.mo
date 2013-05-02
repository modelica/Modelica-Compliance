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

  
  assert(abs(x[1] - time) < 1e-10,         "x[1] was not set correctly.");
  assert(abs(x[2] - 2.0 * time) < 1e-10,   "x[2] was not set correctly.");
  assert(abs(x[3] - 3.0 * time) < 1e-10,   "x[3] was not set correctly.");
  assert(abs(x[4] - 4.0 * time) < 1e-10,   "x[4] was not set correctly.");
  assert(abs(x[5] - 5.0 * time) < 1e-10,   "x[5] was not set correctly.");
  assert(abs(x[6] - 6.0 * time) < 1e-10,   "x[6] was not set correctly.");
  assert(abs(x[7] - 7.0 * time) < 1e-10,   "x[7] was not set correctly.");
  assert(abs(x[8] - 8.0 * time) < 1e-10,   "x[8] was not set correctly.");
  assert(abs(x[9] - 9.0 * time) < 1e-10,   "x[9] was not set correctly.");
  assert(abs(x[10] - 10.0 * time) < 1e-10, "x[10] was not set correctly.");

  assert(abs(y[1] - x[1]) < 1e-10,          "y[1] was not set correctly.");
  assert(abs(y[2] - 2.0 * x[2]) < 1e-10,    "y[2] was not set correctly.");
  assert(abs(y[3] - 3.0 * x[3]) < 1e-10,    "y[3] was not set correctly.");
  assert(abs(y[4] - 4.0 * x[4]) < 1e-10,    "y[4] was not set correctly.");
  assert(abs(y[5] - 5.0 * x[5]) < 1e-10,    "y[5] was not set correctly.");
  assert(abs(y[6] - 6.0 * x[6]) < 1e-10,    "y[6] was not set correctly.");
  assert(abs(y[7] - 7.0 * x[7]) < 1e-10,    "y[7] was not set correctly.");
  assert(abs(y[8] - 8.0 * x[8]) < 1e-10,    "y[8] was not set correctly.");
  assert(abs(y[9] - 9.0 * x[9]) < 1e-10,    "y[9] was not set correctly.");
  assert(abs(y[10] - 10.0 * x[10]) < 1e-10, "y[10] was not set correctly.");

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Checks that it's possible to have multiple statements inside a for-statement.</html>"));
end MultiEq;
