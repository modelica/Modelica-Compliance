within ModelicaCompliance.Algorithms.Terminate;

model Terminate
  extends Icons.TestCase;

  Real x(start=0);
  Real y(start=1);
equation
  der(x)= y;
  der(y)= -x;
algorithm
  when y < 0 then
    terminate("The ball touches the ground");
  end when;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"8.3.8"})),
    experiment(StopTime = 2.0),
    Documentation(
    info = "<html>Tests terminate statement successfully terminates as expected.</html>"));
end Terminate;
