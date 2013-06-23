within ModelicaCompliance.Arrays.Operations.Arithmetic;

model ArrayExponentiationIncorrect2
  extends Icons.TestCase;
  
	Real e = {1, 2, 3} ^ 2;
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"10.6.7"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that it is not allowed to exponent arrays since the left hand side is a scalar.</html>"));
end ArrayExponentiationIncorrect2;
