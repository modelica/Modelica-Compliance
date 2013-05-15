within ModelicaCompliance.Operators.Conversion;

model BooleanToStringConversion
  extends Icons.TestCase;

  String s1;
  String s2;
equation
  s1 = String(true);
  s2 = String(false);
  
  assert(s1 == "true", "s1 was not set correctly");
  assert(s2 == "false", "s2 was not set correctly");
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that string conversion from boolean is possible.</html>"));
end BooleanToStringConversion;
