within ModelicaCompliance.Classes.Enumeration;

model EnumFixedAsLiteral
  extends Icons.TestCase;

  type E = enumeration(broken, fixed);
  E e = E.broken;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"4.8.5.1"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Checks that the fixed attribute of an enumeration is not
        allowed to be used as an enumeration literal.</html>"));
end EnumFixedAsLiteral;
