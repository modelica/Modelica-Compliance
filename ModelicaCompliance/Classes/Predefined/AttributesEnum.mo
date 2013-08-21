within ModelicaCompliance.Classes.Predefined;


model AttributesEnum
  extends Icons.TestCase;

  type E = enumeration(
      one,
      two);
  E e(quantity = "quantity", min = E.one, max = E.two, start = E.two, fixed = false) = E.one;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"4.8.5.1"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Checks that all attributes of an enumeration can be modified.</html>"));
end AttributesEnum;
