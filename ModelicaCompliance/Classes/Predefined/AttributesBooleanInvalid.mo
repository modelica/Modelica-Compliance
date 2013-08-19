within ModelicaCompliance.Classes.Predefined;

model AttributesBooleanInvalid
  extends Icons.TestCase;

  Boolean b(invalid = 2);

  annotation (
  __ModelicaAssociation(TestCase(shouldPass = false, section = {"4.8.3"})),
    experiment(StopTime = 0.01),
    Documentation(
    info = "<html>Checks that trying to modify a non-existing attribute of
      Boolean results in an error.</html>"));
end AttributesBooleanInvalid;
