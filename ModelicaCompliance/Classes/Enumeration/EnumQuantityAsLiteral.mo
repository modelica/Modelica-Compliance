within ModelicaCompliance.Classes.Enumeration;

model EnumQuantityAsLiteral
  extends Icons.TestCase;

  type E = enumeration(quantity, quality);
  E e = E.quality;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"4.8.5.1"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Checks that the quantity attribute of an enumeration is not
        allowed to be used as an enumeration literal.</html>"));
end EnumQuantityAsLiteral;
