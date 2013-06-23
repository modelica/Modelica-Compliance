within ModelicaCompliance.Operators.Arithmetic;

model DivideIntegers
  extends Icons.TestCase;

  constant Integer i = 4000 / 100;
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"3.4"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that division of type integer scalars shall not 
		return type integer.</html>"));
end DivideIntegers;
