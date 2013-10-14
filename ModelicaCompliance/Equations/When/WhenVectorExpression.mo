within ModelicaCompliance.Equations.When;

model WhenVectorExpression
  extends Icons.TestCase;

  Real x = time * 2.0;
  Integer n(start = 0, fixed = true);
equation
  when {x > 0.1, time > 0.1, x > 0.3} then
    n = pre(n) + 1;
  end when;

  if terminal() then
  assert(n == 3, "The when-equation was not activated the correct amount of times.");
  end if;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"8.3.5"})),
    experiment(StopTime = 0.2),
    Documentation(
      info = "<html>Tests when-equation where the condition is a vector expression.</html>"));
end WhenVectorExpression;
