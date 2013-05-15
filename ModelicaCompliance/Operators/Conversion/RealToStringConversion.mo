within ModelicaCompliance.Operators.Conversion;

model RealToStringConversion
  extends Icons.TestCase;

  String s1;
  String s2;
equation
  s1 = String(111.222);
  s2 = String(3.14159265, significantDigits = 4);
  
  assert(s1 == "111.222", "s1 was not set correctly");
  assert(s2 == "3.142", "s2 was not set correctly");
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that string conversion from real is possible.</html>"));
end RealToStringConversion;
