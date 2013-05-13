within ModelicaCompliance.Arrays.Operations.Arithmetic;

model ArrayDivisionIncorrect1
  extends Icons.TestCase;
  
	Real div[3] = {1, 2, 3} / {1, 2, 3};
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that it is not allowed to divide arrays since the denominator is not scalar.</html>"));
end ArrayDivisionIncorrect1;
