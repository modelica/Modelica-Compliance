within ModelicaCompliance.Equations.For;

model ArrayRangeExp
  extends Icons.TestCase;

  Real x[4];
equation
  for elem in {1, 3, 6, 7} loop
    x[integer(ceil(elem / 2.0))] = elem;
  end for;

  assert(Util.compareReal(x[1], 1.0), "x[1] was not set correctly.");
  assert(Util.compareReal(x[2], 3.0), "x[1] was not set correctly.");
  assert(Util.compareReal(x[3], 6.0), "x[1] was not set correctly.");
  assert(Util.compareReal(x[4], 7.0), "x[1] was not set correctly.");

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"8.3.2"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests the use of an array range expression in a for-equation.</html>"));
end ArrayRangeExp;
