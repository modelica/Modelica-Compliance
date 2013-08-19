within ModelicaCompliance.Algorithms.When;

model WhenPriority
  extends Icons.TestCase;

  Boolean close;
  parameter Real x = 5;
algorithm
  when x >= 5 then
    close := true;
  elsewhen x <= 5 then
    close := false;
  end when;

  assert(close == true, "close was not set correctly.");

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
    info = "<html>Tests When-statement, where the first of when/elsewhen parts are given higher priority than later ones
	if both conditions become true at the same time instant.</html>"));
end WhenPriority;
