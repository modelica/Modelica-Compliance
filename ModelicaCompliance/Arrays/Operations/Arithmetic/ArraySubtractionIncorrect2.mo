within ModelicaCompliance.Arrays.Operations.Arithmetic;

model ArraySubtractionIncorrect2
  extends Icons.TestCase;
  
  Real add = {1, 2, 3} - {1, 2, 3};
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that it is not allowed to subtract arrays since the left hand side is a scalar.</html>"));
end ArraySubtractionIncorrect2;
