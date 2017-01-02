within ModelicaCompliance.Algorithms.For;

model ImplicitMultiMixedIterator
  extends Icons.TestCase;

  type E = enumeration(one, two);
  Real x[3, Boolean, E], y[E, 3, Boolean];
algorithm
  for i, j, k loop
    y[k, i, j] := i * Integer(k) * (if j == false then 1 else 2);
    x[i, j, k] := 2 * y[k, i, j];
  end for;

  assert(Util.compareReal(x[1, false, E.one], 2.0),  "x[1, false, E.one] was not set correctly.");
  assert(Util.compareReal(x[1, false, E.two], 4.0),  "x[1, false, E.two] was not set correctly.");
  assert(Util.compareReal(x[1, true, E.one], 4.0),  "x[1, true, E.one] was not set correctly.");
  assert(Util.compareReal(x[1, true, E.two], 8.0),  "x[1, true, E.two] was not set correctly.");
  assert(Util.compareReal(x[2, false, E.one], 4.0),  "x[2, false, E.one] was not set correctly.");
  assert(Util.compareReal(x[2, false, E.two], 8.0),  "x[2, false, E.two] was not set correctly.");
  assert(Util.compareReal(x[2, true, E.one], 8.0),  "x[2, true, E.one] was not set correctly.");
  assert(Util.compareReal(x[2, true, E.two], 16.0), "x[2, true, E.two] was not set correctly.");
  assert(Util.compareReal(x[3, false, E.one], 6.0),  "x[3, false, E.one] was not set correctly.");
  assert(Util.compareReal(x[3, false, E.two], 12.0), "x[3, false, E.two] was not set correctly.");
  assert(Util.compareReal(x[3, true, E.one], 12.0), "x[3, true, E.one] was not set correctly.");
  assert(Util.compareReal(x[3, true, E.two], 24.0), "x[3, true, E.two] was not set correctly.");

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"11.2.2.1", "11.2.2.3"})),
    experiment(StopTime = 0.01),
    Documentation(
    info = "<html>Tests multiple implicit iteration ranges with mixed types in a
      for-statement.</html>"));
end ImplicitMultiMixedIterator;
