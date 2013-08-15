within ModelicaCompliance.Classes.Declarations.Short;

model ShortType
  extends Icons.TestCase;

  type MyReal = Real;
  MyReal x = 2.0;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"4.5.1"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that it's possible to declare a new type with a short
        class definition.</html>"));
end ShortType;
