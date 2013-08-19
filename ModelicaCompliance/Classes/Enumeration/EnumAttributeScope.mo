within ModelicaCompliance.Classes.Enumeration;

model EnumAttributeScope
  extends Icons.TestCase;

  type E = enumeration(one, two, three);
  E e(start = one) = E.two;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"4.8.5"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Checks that enumeration literals are not accessable outside
        the enumeration when used to set attributes of the enumeration type.</html>"));
end EnumAttributeScope;
