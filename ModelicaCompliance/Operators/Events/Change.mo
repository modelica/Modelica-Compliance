within ModelicaCompliance.Operators.Events;

model Change
  extends Icons.TestCase;
  
  discrete Real x, y;
initial equation
  x = 0.0;
  y = 0.0;
equation
  when sample(0, 0.1) then
    y = time;
  end when;

  when change(y) then
    x = y;
  end when;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"3.7.3"})),
    experiment(StopTime = 1.0),
    Documentation(
      info = "<html>Test the change() operator.</html>"));
end Change;
