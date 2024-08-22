within ModelicaCompliance.Classes.Predefined.ReservedClass;

model Integer
  extends Icons.TestCase;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"4.8"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Checks that it's illegal to declare an element with the name Integer.</html>"));
end Integer;
