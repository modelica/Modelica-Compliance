within ModelicaCompliance.Algorithms.When;

model ElseWhenStatement
  extends Icons.TestCase;

  Real r;
  discrete Real i(fixed=true, start = 0);
algorithm
  when {time >= 0.1,time >= 0.6} then
    i := 2;
  elsewhen {time >= 0.2,time >= 0.8} then
    i := -4;
  end when;
equation
  der(r) = i;
  assert(r <= 0.201, "Signal outside expected range (either an event was missed, the solver not exact)");
  assert(r >= -1.801, "Signal outside expected range (either an event was missed, the solver not exact, or stopTime wrong)");

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"11.2.7.2"})),
    experiment(StopTime = 1.0),
    Documentation(
    info = "<html>Tests elsewhen-statement.</html>"));
end ElseWhenStatement;
