within ModelicaCompliance.Classes.Predefined;

model ReservedExternalObjectClass
  extends Icons.TestCase;

  class ExternalObject
    Real x = 1.0;
  end ExternalObject;

  ExternalObject eo;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"4.9"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Since Modelica 3.4 ExternalObject is no longer a reserved class.</html>"));
end ReservedExternalObjectClass;
