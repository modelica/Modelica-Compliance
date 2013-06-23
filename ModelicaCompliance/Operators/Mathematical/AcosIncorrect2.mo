within ModelicaCompliance.Operators.Mathematical;

model AcosIncorrect2
  extends Icons.TestCase;

  Real r;
equation
  r = acos(2); 
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"3.7.1.2"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that the argument of built-in inverse cosine function shall not be be greater than or equal to one.</html>"));
end AcosIncorrect2;
