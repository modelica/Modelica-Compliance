within ModelicaCompliance.Operators.Mathematical;

model AcosIncorrect1
  extends Icons.TestCase;

  Real r;
equation
  r = acos(-2); 
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that the argument of built-in inverse cosine function shall not be be less than than or equal to negative one.</html>"));
end AcosIncorrect1;
