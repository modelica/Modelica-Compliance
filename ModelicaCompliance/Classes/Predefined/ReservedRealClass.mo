within ModelicaCompliance.Classes.Predefined;

model ReservedRealClass
  extends Icons.TestCase;

  class Real
    Real x = 1.0;
  end Real;

  Real r;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"4.8"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Checks that it's illegal to declare an element with the name Real.</html>"));
end ReservedRealClass;
