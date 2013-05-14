within ModelicaCompliance.Functions.Records;

model RecordConstructorDefaultValue
  extends Icons.TestCase;

  record Test
    Integer in1;
    Integer in2 = 42; 
    constant Integer in3 = 1984;
  end Test;
  
  Test a = Test(2,496);
  Test b = Test(2);
equation
  assert(a.in2 == 496, "All inputs have corresponding aruments. Those should be used.");
  assert(b.in2 == 42, "Default value should be used missing argument.");
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html> Tests whether proper default values are used when matching calls to record constructors.</html>"));

end RecordConstructorDefaultValue;

