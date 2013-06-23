within ModelicaCompliance.Arrays.Operations.Arithmetic;

model ArrayEWExponentiationIncorrect
  extends Icons.TestCase;
  
  constant Real realArray[2,2] = 12.^[1,2;3,4];
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"10.6.7"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests it is not possible to use elementwise exponentiation of array since 12. could be a lexical unit; using a space after the literal solves the problem.</html>"));
end ArrayEWExponentiationIncorrect;
