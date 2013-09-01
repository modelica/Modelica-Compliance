within ModelicaCompliance.Operators.Events;

model Pre
  extends Icons.TestCase;
  
  discrete Real x;
initial equation
  x = 1.0;
equation
  when time >= 0.5 then
    x = pre(x) + 1.0;
  end when;
  
  assert(time > 0.49 or Util.compareReal(x, 1.0), "x was not initialized correctly.");
  assert(time < 0.51 or Util.compareReal(x, 2.0), "pre(x) was not evaluated correctly.");

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"3.7.3", "3.7.3.1"})),
    experiment(StopTime = 1.0),
    Documentation(
      info = "<html>Tests the pre() operator.</html>"));
end Pre;
