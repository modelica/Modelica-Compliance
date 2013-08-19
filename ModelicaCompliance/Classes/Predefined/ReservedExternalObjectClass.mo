within ModelicaCompliance.Classes.Predefined;

model ReservedExternalObjectClass
  extends Icons.TestCase;

  class ExternalObject
    Real x = 1.0;
  end ExternalObject;

  ExternalObject eo;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"4.8"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Checks that it's illegal to declare an element with the name ExternalObject.</html>"));
end ReservedExternalObjectClass;
