within ModelicaCompliance.Arrays.Operations.Arithmetic;

model ArrayAdditionIncorrect2
  extends Icons.TestCase;
  
	Real add = {1, 2, 3} + {1, 2, 3};
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"10.6.2"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that it is not allowed to add arrays since the left hand side is a scalar.</html>"));
end ArrayAdditionIncorrect2;
