within ModelicaCompliance.Operators.Events;

model Terminal
  extends Icons.TestCase;
  
equation
  if terminal() then
    assert(time >= 0.01, "terminal() triggered before the end of simulation.");
  end if;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"3.7.3"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests the terminal() operator.</html>"));
end Terminal;
