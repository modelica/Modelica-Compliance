within ModelicaCompliance.Arrays.Indexing;

model EnumMixedArrayIndexing
  extends Icons.TestCase;

  type E = enumeration(one, two, three);
  Real arr[E, 2] = {{1.0, 2.0}, {3.0, 4.0}, {5.0, 6.0}};
  Real x = arr[E.one, 1];
  Real y = arr[E.two, 1];
  Real z = arr[E.three, 1];
  Real u = arr[E.one, 2];
  Real v = arr[E.two, 2];
  Real w = arr[E.three, 2];
equation
  assert(Util.compareReal(x, 1.0), "x was not set correctly.");
  assert(Util.compareReal(y, 3.0), "y was not set correctly.");
  assert(Util.compareReal(z, 5.0), "z was not set correctly.");
  assert(Util.compareReal(u, 2.0), "u was not set correctly.");
  assert(Util.compareReal(v, 4.0), "v was not set correctly.");
  assert(Util.compareReal(w, 6.0), "w was not set correctly.");

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"4.8.5"})),
    experiment(StopTime = 0.01),
    Documentation(
    info = "<html>Tests that it's possible to use enumeration literals to index
      an array declared with an enumeration type as dimension.</html>"));
end EnumMixedArrayIndexing;
