within ModelicaCompliance.Classes.Enumeration;

model EnumMaxAsLiteral
  extends Icons.TestCase;

  type E = enumeration(peter, max, john);
  E e = E.john;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"4.8.5.1"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Checks that the max attribute of an enumeration is not
        allowed to be used as an enumeration literal.</html>"));
end EnumMaxAsLiteral;
