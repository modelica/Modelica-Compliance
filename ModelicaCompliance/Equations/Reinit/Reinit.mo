within ModelicaCompliance.Equations.Reinit;

model Reinit
  extends Icons.TestCase;

  parameter Real e = 0.7;
  parameter Real g = 9.81;
  Real h(start = 1.0, fixed = true);
  Real v(fixed = true);
  Boolean flying(start = true);
equation
  der(h) = v;
  der(v) = if flying then -g else 0;
  flying = not(h <= 0 and v <= 0);

  when h < 0 then
    reinit(v, -e * pre(v));
  end when;

  when terminal() then
    assert(not flying, "The ball should have settled after 3 sec.");
  end when;
    
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"3.7.3", "8.3.6"})),
    experiment(StopTime = 3.0),
    Documentation(
      info = "<html>Test the reinit() operator with a bouncing ball model.</html>"));
end Reinit;
