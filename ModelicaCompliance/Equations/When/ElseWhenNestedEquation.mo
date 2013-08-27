within ModelicaCompliance.Equations.When;

model ElseWhenNestedEquation
  extends Icons.TestCase;

  Boolean close;
  parameter Real x = 5;
equation
  when x > 5 then
    close = true;
  elsewhen x <= 5 then
    when x < 3 then
      close = false;
	end when;
  end when;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"8.3.5", "8.3.5.2"})),
    experiment(StopTime = 0.01),
    Documentation(
    info = "<html>Tests nested when-equation in the elsewhen branch is not allowed.</html>"));
end ElseWhenNestedEquation;
