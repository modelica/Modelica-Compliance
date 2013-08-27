within ModelicaCompliance.Operators.Precedence;

model ConditionalPrecedence
  extends Icons.TestCase;
 
  constant Boolean b = if 1 + 1 == 2 and 3 > 2 then true else false;
equation
  assert(b, "The if-operator does not have the lowest precedence.");

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"3.2"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests the precedence of the range operator.</html>"));
end ConditionalPrecedence;
