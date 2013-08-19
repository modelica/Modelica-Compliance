within ModelicaCompliance.Classes.Predefined;

model ReservedIntegerClass
  extends Icons.TestCase;

  class Integer
    Real x = 1.0;
  end Integer;

  Integer i;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"4.8"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Checks that it's illegal to declare an element with the name Integer.</html>"));
end ReservedIntegerClass;
