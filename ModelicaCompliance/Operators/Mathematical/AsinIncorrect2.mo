within ModelicaCompliance.Operators.Mathematical;

model AsinIncorrect2
  extends Icons.TestCase;

  Real r;
equation
  r = asin(2); 
   
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"3.7.1.2"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that the argument of built-in inverse sin function shall be greater than or equal to negative one and less than or equal to one.</html>"));
end AsinIncorrect2;
