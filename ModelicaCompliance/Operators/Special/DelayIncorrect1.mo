within ModelicaCompliance.Operators.Special;

model DelayIncorrect1
  extends Icons.TestCase;
  
  Real x, y;
  Real a = 1.0, b=2.0;
equation
  x = sin(time);
  y = delay(x, a, b);
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests the builtin function delay shall show an error since the argument b is not a parameter expression.</html>"));
end DelayIncorrect1;
