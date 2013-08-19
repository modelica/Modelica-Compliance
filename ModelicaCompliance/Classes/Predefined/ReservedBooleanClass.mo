within ModelicaCompliance.Classes.Predefined;

model ReservedBooleanClass
  extends Icons.TestCase;

  class Boolean
    Real x = 1.0;
  end Boolean;

  Boolean b;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"4.8"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Checks that it's illegal to declare an element with the name Boolean.</html>"));
end ReservedBooleanClass;
