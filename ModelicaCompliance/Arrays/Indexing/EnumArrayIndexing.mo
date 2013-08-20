within ModelicaCompliance.Arrays.Indexing;

model EnumArrayIndexing
  extends Icons.TestCase;

  type E = enumeration(one, two, three);
  Real arr[E] = {1.0, 2.0, 3.0};
  Real x = arr[E.one];
  Real y = arr[E.two];
  Real z = arr[E.three];
equation
  assert(Util.compareReal(x, 1.0), "arr[x] was not set correctly.");
  assert(Util.compareReal(y, 2.0), "arr[y] was not set correctly.");
  assert(Util.compareReal(z, 3.0), "arr[z] was not set correctly.");

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"4.8.5"})),
    experiment(StopTime = 0.01),
    Documentation(
    info = "<html>Tests that it's possible to use enumeration literals to index
      an array declared with an enumeration type as dimension.</html>"));
end EnumArrayIndexing;
