within ModelicaCompliance.Classes.Enumeration;

model EnumDuplicateLiteral
  extends Icons.TestCase;

  type E = enumeration(one, two, three, two);
  E e = E.three;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"4.8.5.1"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that it's not allowed to have duplicate literals in an
        enumeration type.</html>"));
end EnumDuplicateLiteral;
