within ModelicaCompliance.Classes.Predefined;

model AttributesStringInvalid
  extends Icons.TestCase;

  String s(invalid = 2);

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"4.8.4"})),
    experiment(StopTime = 0.01),
    Documentation(
    info = "<html>Checks that trying to modify a non-existing attribute of
      String results in an error.</html>"));
end AttributesStringInvalid;
