within ModelicaCompliance.Operators.Special;

model DerConstantIncorrect2
  extends Icons.TestCase;

  discrete Real pa = 1; 
  Real a = der(pa);
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"3.7.2"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that Operator der cannot be applied to Real expressions which are not constant or parametric.</html>"));
end DerConstantIncorrect2;
