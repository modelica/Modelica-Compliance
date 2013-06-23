within ModelicaCompliance.Functions.Records;

model RecordConstructorConstantModifiable
  //extends Icons.TestCase;

  record Test
    Integer in1;
    constant Integer in2 "This should be an input component to the record constructor. "; 
    constant Integer in3 = 42;
  end Test;
  
  Test a = Test(496,1984);
equation
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"12.6"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html> Tests whether record member constant components without 
      default values are used as inputs to the record constructor function. 
      A constant without an associated declaration equation can be given one by using a modifier. [3.8.1]</html>"));

end RecordConstructorConstantModifiable;

