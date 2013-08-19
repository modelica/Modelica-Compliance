within ModelicaCompliance.Algorithms.When;

model ElseWhenStatement
  extends Icons.TestCase;

  Boolean close;
  parameter Real x = 5;
algorithm
  when x > 5 then
    close := true;
  elsewhen x <= 5 then
    close := false;
  end when;

  assert(close == false, "close was not set correctly.");

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
    info = "<html>Tests elsewhen-statment.</html>"));
end ElseWhenStatement;
