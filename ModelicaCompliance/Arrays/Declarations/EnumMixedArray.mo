within ModelicaCompliance.Arrays.Declarations;

model EnumMixedArray
  extends Icons.TestCase;

  type E = enumeration(one, two, three);
  Real arr[2, E] = {{1.0, 2.0, 3.0}, {4.0, 5.0, 6.0}};
equation
  assert(Util.compareReal(arr[1, E.one],   1.0), "arr[1, E.one] was not set correctly.");
  assert(Util.compareReal(arr[1, E.two],   2.0), "arr[1, E.two] was not set correctly.");
  assert(Util.compareReal(arr[1, E.three], 3.0), "arr[1, E.three] was not set correctly.");
  assert(Util.compareReal(arr[2, E.one],   4.0), "arr[2, E.one] was not set correctly.");
  assert(Util.compareReal(arr[2, E.two],   5.0), "arr[2, E.two] was not set correctly.");
  assert(Util.compareReal(arr[2, E.three], 6.0), "arr[2, E.three] was not set correctly.");

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"4.8.5"})),
    experiment(StopTime = 0.01),
    Documentation(
    info = "<html>Tests that it's possible to declare an array using a mix of
      integer and enumeration dimensions.</html>"));
end EnumMixedArray;
