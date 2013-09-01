within ModelicaCompliance.Operators.Conversion;

model EnumToString
  extends Icons.TestCase;

  type E = enumeration(one, two, three, four);
equation
  assert(String(E.one)   == "one", "String(E.one) was not evaluated correctly.");
  assert(String(E.two)   == "two", "String(E.two) was not evaluated correctly.");
  assert(String(E.three) == "three", "String(E.three) was not evaluated correctly.");
  assert(String(E.four)  == "four", "String(E.four) was not evaluated correctly.");
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"3.7.1", "4.8.5.2"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests the Integer conversion operator for enumerations.</html>"));
end EnumToString;
