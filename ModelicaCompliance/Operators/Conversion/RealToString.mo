within ModelicaCompliance.Operators.Conversion;

model RealToString
  extends Icons.TestCase;

  String s1;
  String s2;
  String s3;
  String s4;
equation
  s1 = String(111.222);
  s2 = String(3.14159265, significantDigits = 4);
  s3 = String(5.2353535345, format = "2.6f");
  s4 = String(6565.3525356, format = "2.0e");
  
  assert(s1 == "111.222", "s1 was not set correctly");
  assert(s2 == "3.142", "s2 was not set correctly");
  assert(s3 == "5.235354", "s3 was not set correctly.");
  assert(s4 == "7e+03" or s4 == "7e+003", "s4 was not set correctly.");

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"3.7.1"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that string conversion from real is possible.</html>"));
end RealToString;
