within ModelicaCompliance.Operators.Events;

model Reinit
  extends Icons.TestCase;

  parameter Real e = 0.7;
  parameter Real g = 9.81;
  Real h(start = 1);
  Real v;
  Boolean flying(start = true);
  Boolean impact;
  Real v_new;
  discrete Integer n_bounce(start = 0);
equation   
  impact = h <= 0.0;
  der(v) = if flying then -g else 0;
  der(h) = v;

  when {h <= 0.0 and v <= 0.0, impact} then
    v_new = if edge(impact) then -e * pre(v) else 0;
    flying = v_new > 0;
    reinit(v, v_new);
    n_bounce = pre(n_bounce) + 1;
  end when;

  when terminal() then
    assert(n_bounce == 33, "The ball did not bounce the correct amount of times.");
  end when;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"3.7.3", "8.3.6"})),
    experiment(StopTime = 1.0),
    Documentation(
      info = "<html>Test the reinit() operator with a bouncing ball model.</html>"));
end Reinit;
