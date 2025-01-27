within ModelicaCompliance.Operators.Events;
model Change
  extends Icons.TestCase;

  discrete Integer x, y;
initial equation
  x = 0;
  y = 0;
equation
  when sample(0, 0.1) then
    y = integer(time * 10.0);
  end when;

  when change(y) then
    x = y;
  end when;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"3.7.5"})),
    experiment(StopTime = 1.0),
    Documentation(
      info = "<html>Test the change() operator.</html>"));
end Change;
