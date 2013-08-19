within ModelicaCompliance.Classes.Predefined;

model AttributesIntegerInvalid
  extends Icons.TestCase;

  Integer i(invalid = 2);

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"4.8.2"})),
    experiment(StopTime = 0.01),
    Documentation(
    info = "<html>Checks that trying to modify a non-existing attribute of
      Integer results in an error.</html>"));
end AttributesIntegerInvalid;
