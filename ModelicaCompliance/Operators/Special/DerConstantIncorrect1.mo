within ModelicaCompliance.Operators.Special;

model DerConstantIncorrect1
  extends Icons.TestCase;

  constant Integer pa = 1; 
  Real a = der(pa);
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that Operator der cannot be applied to Integer expressions. It shall be a subtype of Real expression.</html>"));
end DerConstantIncorrect1;
