within ModelicaCompliance.Operators.Conversion;

model RealToIntegerConversion
  extends Icons.TestCase;

  Integer i;
equation
  i = integer(4.5);
  
  assert(i == 4, "i was not set correctly");
    
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that the built-in integer function is possible.</html>"));
end RealToIntegerConversion;
