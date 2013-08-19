within ModelicaCompliance.Algorithms.When;

model NestedWhenStatement
  extends Icons.TestCase;

  Real x(start=1);
  Real y1;
  parameter Real y2 = 5;
  Real y3;
algorithm
  when x > 2 then
    when x < 5 then
      y1 := sin(x);
      y3 := 2*x + y1 + y2;
    end when;
  end when;
equation
  x = 2*time;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false)),
    experiment(StopTime = 0.01),
    Documentation(
    info = "<html>Tests nested when-statement is not allowed.</html>"));
end NestedWhenStatement;
