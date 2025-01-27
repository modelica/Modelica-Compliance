within ModelicaCompliance.Operators.Events;
model NoEvent
  extends Icons.TestCase;

  Real x;
equation
  if noEvent(time < 0.05) then
    x = 1.0;
  else
    x = 2.0;
  end if;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"3.7.5", "3.7.2"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests the noEvent() operator.</html>"));
end NoEvent;
