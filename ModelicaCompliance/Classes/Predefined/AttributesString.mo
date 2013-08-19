within ModelicaCompliance.Classes.Predefined;

model AttributesString
  extends Icons.TestCase;

  String s(quantity = "quantity", start = "string") = "someString";

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"4.8.4"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Checks that all attributes of String can be modified.</html>"));
end AttributesString;
