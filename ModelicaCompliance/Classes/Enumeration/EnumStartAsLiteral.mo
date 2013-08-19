within ModelicaCompliance.Classes.Enumeration;

model EnumStartAsLiteral
  extends Icons.TestCase;

  type E = enumeration(start, stop);
  E e = E.start;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"4.8.5.1"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Checks that the start attribute of an enumeration is not
        allowed to be used as an enumeration literal.</html>"));
end EnumStartAsLiteral;
