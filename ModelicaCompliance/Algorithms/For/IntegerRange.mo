within ModelicaCompliance.Algorithms.For;

model IntegerRange
  extends Icons.TestCase;

  Real x[10] = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9};
  Real y[10];
algorithm
  for i in 1:10 loop
    y[i] := i * x[i];
  end for;

  assert(Util.compareReal(y[1] ,  0.0), "y[1] was not set correctly.");
  assert(Util.compareReal(y[2] ,  2.0), "y[2] was not set correctly.");
  assert(Util.compareReal(y[3] ,  6.0), "y[3] was not set correctly.");
  assert(Util.compareReal(y[4] , 12.0), "y[4] was not set correctly.");
  assert(Util.compareReal(y[5] , 20.0), "y[5] was not set correctly.");
  assert(Util.compareReal(y[6] , 30.0), "y[6] was not set correctly.");
  assert(Util.compareReal(y[7] , 42.0), "y[7] was not set correctly.");
  assert(Util.compareReal(y[8] , 56.0), "y[8] was not set correctly.");
  assert(Util.compareReal(y[9] , 72.0), "y[9] was not set correctly.");
  assert(Util.compareReal(y[10], 90.0), "y[10] was not set correctly.");

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"11.2.2"})),
    experiment(StopTime = 0.01),
    Documentation(
    info = "<html>Tests the use of an Integer range in a for-statement.</html>"));
end IntegerRange;
