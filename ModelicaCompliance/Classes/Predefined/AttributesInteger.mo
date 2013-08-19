within ModelicaCompliance.Classes.Predefined;

model AttributesInteger
  extends Icons.TestCase;

  Integer i(quantity = "quantity", min = -100, max = 100, start = 1,
    fixed = false) = 1;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"4.8.2"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Checks that all attributes of Integer can be modified.</html>"));
end AttributesInteger;
