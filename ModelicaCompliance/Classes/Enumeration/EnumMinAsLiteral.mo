within ModelicaCompliance.Classes.Enumeration;

model EnumMinAsLiteral
  extends Icons.TestCase;

  type E = enumeration(min, din);
  E e = E.min;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"4.8.5.1"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Checks that the min attribute of an enumeration is not
        allowed to be used as an enumeration literal.</html>"));
end EnumMinAsLiteral;
