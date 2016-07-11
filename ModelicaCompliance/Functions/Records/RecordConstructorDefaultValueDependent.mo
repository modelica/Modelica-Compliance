within ModelicaCompliance.Functions.Records;

model RecordConstructorDefaultValueDependent
  extends Icons.TestCase;

  record Test
    Integer in1;
    Integer in2 = in3; 
    constant Integer in3 = 42;
  end Test;
  
  Test a = Test(496,1984);
  Test b = Test(2);
equation
  assert(a.in2 == 1984, "All inputs have corresponding arguments. Those should be used.");
  assert(b.in2 == 42, "Default value should be used for missing argument.");
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"12.6"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html> Tests whether proper default values are used when matching calls to record constructors.</html>"));

end RecordConstructorDefaultValueDependent;

