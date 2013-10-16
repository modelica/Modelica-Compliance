within ModelicaCompliance.Algorithms.When;

model WhenVectorExpression
  extends Icons.TestCase;

  Real x = time * 2.0;
  Integer n(start = 0, fixed = true);
algorithm
  when {x > 0.1, time > 0.1, x > 0.3} then
    n := pre(n) + 1;
  end when;

  if terminal() then
    assert(n == 3, "The when-statement was not activated the correct number of times.");
  end if;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"11.2.7"})),
    experiment(StopTime = 0.2),
    Documentation(
    info = "<html>Tests when-statements where the expression is a vector.</html>"));
end WhenVectorExpression;
