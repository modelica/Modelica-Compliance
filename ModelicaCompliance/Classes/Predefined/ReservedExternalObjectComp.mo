within ModelicaCompliance.Classes.Predefined;

model ReservedExternalObjectComp
  extends Icons.TestCase;

  Real ExternalObject = 3.0;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"4.8"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Checks that it's illegal to declare an element with the name ExternalObject.</html>"));
end ReservedExternalObjectComp;
