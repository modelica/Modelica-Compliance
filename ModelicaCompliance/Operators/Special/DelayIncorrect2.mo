within ModelicaCompliance.Operators.Special;
model DelayIncorrect2
  extends Icons.TestCase;

  Real x, y;
  Real a = 1.0;
equation
  x = sin(time);
  y = delay(x, a);

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"3.7.4"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests the builtin function delay shall show an error since the argument a is not a parameter expression. 
                 If delayMax is not supplied in the argument list, delayTime neeed to be a parameter expression</html>"));
end DelayIncorrect2;
