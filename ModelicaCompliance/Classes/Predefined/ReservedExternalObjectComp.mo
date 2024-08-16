within ModelicaCompliance.Classes.Predefined;

model ReservedExternalObjectComp
  extends Icons.TestCase;

  Real ExternalObject = 3.0;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"4.9"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Since Modelica 3.4 ExternalObject is no longer a reserved class.</html>"));
end ReservedExternalObjectComp;
