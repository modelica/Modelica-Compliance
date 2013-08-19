within ModelicaCompliance.Classes.Enumeration;

model EnumScope
  extends Icons.TestCase;

  type E = enumeration(one, two, three);
  E e = three;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"4.8.5"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Checks that enumeration literals are not accessable outside
        the enumeration.</html>"));
end EnumScope;
