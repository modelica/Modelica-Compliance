within ModelicaCompliance.Operators.Conversion;

model EnumToStringExp
  extends Icons.TestCase;

  type E = enumeration(one, two, three, four);
  E e1 = E.one;
  E e2 = E.two;
  E e3 = E.three;
  E e4 = E.four;
equation
  assert(String(e1) == "one", "String(E.one) was not evaluated correctly.");
  assert(String(e2) == "two", "String(E.two) was not evaluated correctly.");
  assert(String(e3) == "three", "String(E.three) was not evaluated correctly.");
  assert(String(e4) == "four", "String(E.four) was not evaluated correctly.");
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"3.7.1", "4.8.5.2"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests the String conversion operator for enumerations.</html>"));
end EnumToStringExp;
