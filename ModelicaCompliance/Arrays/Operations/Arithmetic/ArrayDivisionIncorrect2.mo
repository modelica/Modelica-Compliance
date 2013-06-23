within ModelicaCompliance.Arrays.Operations.Arithmetic;

model ArrayDivisionIncorrect2
  extends Icons.TestCase;
  
	Real div = {1, 2, 3} / 1;
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"10.6.5"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that it is not allowed to divide arrays since the left hand side is a scalar.</html>"));
end ArrayDivisionIncorrect2;
