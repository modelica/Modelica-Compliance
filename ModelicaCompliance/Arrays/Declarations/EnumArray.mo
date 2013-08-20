within ModelicaCompliance.Arrays.Declarations;

model EnumArray
  extends Icons.TestCase;

  type E = enumeration(one, two, three);
  Real arr[E] = {1.0, 2.0, 3.0};
equation
  assert(Util.compareReal(arr[E.one],   1.0), "arr[E.one] was not set correctly.");
  assert(Util.compareReal(arr[E.two],   2.0), "arr[E.two] was not set correctly.");
  assert(Util.compareReal(arr[E.three], 3.0), "arr[E.three] was not set correctly.");

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"4.8.5", "10.1.1"})),
    experiment(StopTime = 0.01),
    Documentation(
    info = "<html>Tests that it's possible to declare an array using an
      enumeration type as dimension.</html>"));
end EnumArray;
