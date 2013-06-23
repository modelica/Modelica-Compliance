within ModelicaCompliance.Operators.Conversion;

model IntegerToStringConversion
  extends Icons.TestCase;

  String s1;
  String s2;
equation
  s1 = String(4711);
  s2 = String(1138, minimumLength = 12, leftJustified = false);
  
  assert(s1 == "4711", "s1 was not set correctly");
  assert(s2 == "        1138", "s2 was not set correctly");
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"3.7.1"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that string conversion from integer is possible.</html>"));
end IntegerToStringConversion;
