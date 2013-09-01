within ModelicaCompliance.Operators.Events;

model Smooth
  extends Icons.TestCase;
  
  Real x, y;
equation
  x = 2.4 * time;
  y = smooth(1, x);

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"3.7.3", "3.7.3.2"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests the smooth() operator.</html>"));
end Smooth;
