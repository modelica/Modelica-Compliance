within ModelicaCompliance.Operators.Arithmetic;

model DivideIntegers
  extends Icons.TestCase;

  constant Integer i = 4000 / 100;
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that division of integer scalars should not 
		return type integer scalar value.</html>"));
end DivideIntegers;
