within ModelicaCompliance.Classes.Predefined;

model AttributesRealInvalid
  extends Icons.TestCase;

  Real r(invalid = 2.0);

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"4.8.1"})),
    experiment(StopTime = 0.01),
    Documentation(
    info = "<html>Checks that trying to modify a non-existing attribute of Real
      results in an error.</html>"));
end AttributesRealInvalid;
