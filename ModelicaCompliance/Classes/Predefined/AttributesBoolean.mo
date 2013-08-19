within ModelicaCompliance.Classes.Predefined;

model AttributesBoolean
  extends Icons.TestCase;

  Boolean b(quantity = "quantity", start = true, fixed = false) = false;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"4.8.3"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Checks that all attributes of Boolean can be modified.</html>"));
end AttributesBoolean;
