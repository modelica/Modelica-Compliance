within ModelicaCompliance.Classes.Predefined;

model ReservedStateSelectComp
  extends Icons.TestCase;

  Real StateSelect = 3.0;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"4.8"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Checks that it's illegal to declare an element with the name StateSelect.</html>"));
end ReservedStateSelectComp;
