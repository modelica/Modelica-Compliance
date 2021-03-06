within ModelicaCompliance.Algorithms.When;

model WhenPriority
  extends Icons.TestCase;

  Boolean close(fixed = true);
  Real x(start = 3, fixed = true);
algorithm
  when not initial() then
    x := 6;
  end when;

  when x >= 5 then
    close := true;
  elsewhen x >= 4 then
    close := false;
  end when;

  if not initial() then
    assert(close == true, "close was not set correctly.");
  end if;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
    info = "<html>Tests When-statement, where the first of when/elsewhen parts are given higher priority than later ones
	if both conditions become true at the same time instant.</html>"));
end WhenPriority;
