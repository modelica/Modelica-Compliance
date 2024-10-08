within ModelicaCompliance.Arrays.Operations.Arithmetic;
model ArrayEWAdditionIncorrect1
  extends Icons.TestCase;

 Real add[3] = {1, 2, 3} .+ zeros(0);

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"10.6.2", "10.7"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that it is not allowed to add arrays with different sizes.</html>"));
end ArrayEWAdditionIncorrect1;
