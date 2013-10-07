within ModelicaCompliance.Equations.When;

model ElseWhen
  extends Icons.TestCase;

  Real r;
  discrete Real i(fixed=true, start = 0);
equation
  der(r) = i;
  assert(r <= 0.201, "Signal outside expected range (either an event was missed, the solver not exact)");
  assert(r >= -1.801, "Signal outside expected range (either an event was missed, the solver not exact, or stopTime wrong)");
  when {time >= 0.1,time >= 0.6} then
    i = 2;
  elsewhen {time >= 0.2,time >= 0.8} then
    i = -4;
  end when;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"8.3.5", "8.3.5.3"})),
    experiment(StopTime = 1.0),
    Documentation(
      info = "<html>
<p>Tests that elsewhen works as expected, including arrays of booleans as conditions on both expressions.</p>
</html>"));
end ElseWhen;
