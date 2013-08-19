within ModelicaCompliance.Classes.Predefined;

model AttributesEnumInvalid
  extends Icons.TestCase;

  type E = enumeration(one, two);
  E e(invalid = 1);

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"4.8.5.1"})),
    experiment(StopTime = 0.01),
    Documentation(
    info = "<html>Checks that trying to modify a non-existing attribute of an
      enumeration results in an error.</html>"));
end AttributesEnumInvalid;
