within ModelicaCompliance.Equations.Terminate;

model Terminate
  extends Icons.TestCase;

  Real x(start = 0, fixed = true);
  Real y(start = 1, fixed = true);
equation
  der(x) = y;
  der(y) = -x;

  when y < 0 then
    terminate("The ball touches the ground");
  end when;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"8.3.8"})),
    experiment(StopTime = 2.0),
    Documentation(
    info = "<html>Tests terminate equation successfully terminates as expected.</html>"));
end Terminate;
