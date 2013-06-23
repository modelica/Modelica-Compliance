within ModelicaCompliance.Arrays.Operations.Arithmetic;

model ArrayExponentiationIncorrect1
  extends Icons.TestCase;
  
	Real e[3] = {1, 2, 3} ^ {1, 2, 3};
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"10.6.7"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that vector exponents are not allowed.</html>"));
end ArrayExponentiationIncorrect1;
