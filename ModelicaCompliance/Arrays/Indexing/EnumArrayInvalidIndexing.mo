within ModelicaCompliance.Arrays.Indexing;

model EnumArrayInvalidIndexing
  extends Icons.TestCase;

  type E = enumeration(one, two, three);
  Real arr[E] = {1.0, 2.0, 3.0};
  Real x = arr[1];

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"4.8.5", "10.1"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that it's not legal to index an array dimension given by
        an enumeration type with an Integer.</html>"));
end EnumArrayInvalidIndexing;
