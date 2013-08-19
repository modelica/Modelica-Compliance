within ModelicaCompliance.Classes.Enumeration;

model EnumSimple
  extends Icons.TestCase;

  type E = enumeration(one, two, three);
  E e = E.two;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"4.8.5"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that a simple enumeration works.</html>"));
end EnumSimple;
