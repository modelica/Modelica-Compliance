within ModelicaCompliance.Classes.Predefined;

model ReservedRealComp
  extends Icons.TestCase;

  Integer Real = 2;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"4.8"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Checks that it's illegal to declare an element with the name Real.</html>"));
end ReservedRealComp;
