within ModelicaCompliance.Operators.Conversion;

model EnumToIntegerExp
  extends Icons.TestCase;

  type E = enumeration(one, two, three, four);
  E e1 = E.one;
  E e2 = E.two;
  E e3 = E.three;
  E e4 = E.four;
equation
  assert(Integer(e1) == 1, "Integer(E.one) was not evaluated correctly.");
  assert(Integer(e2) == 2, "Integer(E.two) was not evaluated correctly.");
  assert(Integer(e3) == 3, "Integer(E.three) was not evaluated correctly.");
  assert(Integer(e4) == 4, "Integer(E.four) was not evaluated correctly.");
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"3.7.1", "4.8.5.2"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests the Integer conversion operator for enumerations.</html>"));
end EnumToIntegerExp;
