within ModelicaCompliance.Classes.Predefined;

model ReservedStringClass
  extends Icons.TestCase;

  class String
    Real x = 1.0;
  end String;

  String s;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"4.8"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Checks that it's illegal to declare an element with the name String.</html>"));
end ReservedStringClass;
