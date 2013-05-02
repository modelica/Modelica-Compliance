within ModelicaCompliance.Equations.For;

model ImplicitIntegerIterator
  extends Icons.TestCase;

  Real x[4];
  Real y[4] = {1, 2, 3, 4};
equation
  for i loop
    x[i] = 2 * y[i];
  end for;

  assert(abs(x[1] - 2.0) < 1e-10, "x[1] was not set correctly.");
  assert(abs(x[2] - 4.0) < 1e-10, "x[2] was not set correctly.");
  assert(abs(x[3] - 6.0) < 1e-10, "x[3] was not set correctly.");
  assert(abs(x[4] - 8.0) < 1e-10, "x[4] was not set correctly.");

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests an integer implicit iteration range in a for-equation.</html>"));
end ImplicitIntegerIterator;
