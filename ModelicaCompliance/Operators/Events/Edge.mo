within ModelicaCompliance.Operators.Events;

model Edge
  extends Icons.TestCase;
  
  Boolean b(fixed = true);
  discrete Real x;
initial equation
  x = 1.0;
equation
  b = time > 0.5;

  when edge(b) then
    x = 2.0;
  end when;

  assert(time > 0.49 or Util.compareReal(x, 1.0), "x was not initialized correctly.");
  assert(time < 0.51 or Util.compareReal(x, 2.0), "edge(b) was not triggered correctly.");

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"3.7.3"})),
    experiment(StopTime = 1.0),
    Documentation(
      info = "<html>Tests the edge() operator.</html>"));
end Edge;
