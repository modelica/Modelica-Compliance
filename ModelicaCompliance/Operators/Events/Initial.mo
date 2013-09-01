within ModelicaCompliance.Operators.Events;

model Initial
  extends Icons.TestCase;
  
equation
  if initial() then
    assert(Util.compareReal(time, 0.0), "initial() triggered outside initialization phase.");
  end if;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"3.7.3"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests the initial() operator.</html>"));
end Initial;
