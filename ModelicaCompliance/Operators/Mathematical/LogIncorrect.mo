within ModelicaCompliance.Operators.Mathematical;

model LogIncorrect
  extends Icons.TestCase;

  Real r;
equation
  r = log(0);
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"3.7.1.2"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that the argument of built-in log function shall be less than or equal to zero.</html>"));
end LogIncorrect;
