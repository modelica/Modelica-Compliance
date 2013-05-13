within ModelicaCompliance.Arrays.Operations.Arithmetic;

model ArrayExponentiationIncorrect3
  extends Icons.TestCase;
  
  Real e[2, 2];
equation
  e = {{1, 2}, {1, 2}} ^ 2.3;
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that non-integer exponents are forbidden.</html>"));
end ArrayExponentiationIncorrect3;
