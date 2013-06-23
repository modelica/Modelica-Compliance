within ModelicaCompliance.Arrays.Operations.Arithmetic;

model ArrayAdditionIncorrect1
  extends Icons.TestCase;
  
	Real add[3] = {1, 2, 3} + {1, 2};
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"10.6.2"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that it is not allowed to add arrays with different sizes.</html>"));
end ArrayAdditionIncorrect1;
