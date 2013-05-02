within ModelicaCompliance.Equations.For;

model SingleIterator
  extends Icons.TestCase;

  Real x[2];
equation
  for i in 1:2 loop
    x[i] = i;
  end for;

  assert(abs(x[1] - 1.0) < 1e-10, "x[1] was not set correctly.");
  assert(abs(x[2] - 2.0) < 1e-10, "x[2] was not set correctly.");

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests a single iteration range in a for-equation.</html>"));
end SingleIterator;
