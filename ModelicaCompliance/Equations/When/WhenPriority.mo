within ModelicaCompliance.Equations.When;

model WhenPriority
  extends Icons.TestCase;

  Boolean close;
  parameter Real x = 5;
equation
  when x >= 5 then
    close = true;
  elsewhen x <= 5 then
    close = false;
  end when;

  assert(close == true, "close was not set correctly.");

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"8.3.5", "8.3.5.3"})),
    experiment(StopTime = 0.01),
    Documentation(
    info = "<html>Tests When-equations, where the first of when/elsewhen parts are given higher priority than later ones 
	if both conditions become true at the same time instant.</html>"));
end WhenPriority;
