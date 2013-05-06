within ModelicaCompliance.Operators.Special;

model Delay
  extends Icons.TestCase;
  
  Real x, y, z;
equation
  y = sin(time);
  x = delay(y+1, 2.5);
  z = delay(y-1, 0.5, 1.0);
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests the builtin function delay with arguments expression and delayTime or with arguments expression, delayTime and delayMax</html>"));
end Delay;
