within ModelicaCompliance.Operators.Special;

model Homotopy
  extends Icons.TestCase;
  
  Real x = homotopy(actual = 1.0, simplified = 0.0);

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"3.7.2"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests the builtin function delay shall show an error since the argument b is not a parameter expression.</html>"));
end Homotopy;
