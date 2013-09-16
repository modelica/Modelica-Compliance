within ModelicaCompliance.Algorithms.When;

model WhenVectorExpression
  extends Icons.TestCase;

  Real x(start=1);
  Real y1;
  parameter Real y2 = 5;
  Real y3;
algorithm
  when {x > 2, sample(0, 2), x < 5} then
    y1 := sin(x);
    y3 := 2*x + y1 + y2;
  end when;
equation
  x = 2*time;

  if not initial() then
    assert(Util.compareReal(x, 2 * time), "x was not set correctly.");
    assert(Util.compareReal(y1, 0.0), "y1 was not set correctly.");
    assert(Util.compareReal(y2, 5.0), "y2 was not set correctly.");
    assert(Util.compareReal(y3, 0.0), "y3 was not set correctly.");
  end if;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"11.2.7"})),
    experiment(StopTime = 0.01),
    Documentation(
    info = "<html>Tests When-statment, where the expression is a vector.</html>"));
end WhenVectorExpression;
