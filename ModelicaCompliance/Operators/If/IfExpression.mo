within ModelicaCompliance.Operators.If;

model IfExpression
  extends Icons.TestCase;

  parameter Boolean b = true;
  Integer i = if not b then c else 1;
equation
  assert(i == 1, "The value of i must be 1");
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that if expresssion clauses are only evaluated if the appropriate condition is true.</html>"));
end IfExpression;
