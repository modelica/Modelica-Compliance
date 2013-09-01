within ModelicaCompliance.Operators.Conversion;

model EnumToInteger
  extends Icons.TestCase;

  type E = enumeration(one, two, three, four);
equation
  assert(Integer(E.one)   == 1, "Integer(E.one) was not evaluated correctly.");
  assert(Integer(E.two)   == 2, "Integer(E.two) was not evaluated correctly.");
  assert(Integer(E.three) == 3, "Integer(E.three) was not evaluated correctly.");
  assert(Integer(E.four)  == 4, "Integer(E.four) was not evaluated correctly.");
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"3.7.1", "4.8.5.2"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests the Integer conversion operator for enumerations.</html>"));
end EnumToInteger;
