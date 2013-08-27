within ModelicaCompliance.Operators.Precedence;

model LogicPrecedence
  extends Icons.TestCase;
 
  constant Boolean b1 = not true and false;
  constant Boolean b2 = not false or true;
  constant Boolean b3 = true or false and false;
equation
  assert(not b1, "'not' should have higher precedence than 'and'.");
  assert(b2, "'not' should have higher precedence than 'or'.");
  assert(b3, "'and' should have higher precedence that 'or'.");

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"3.2"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests the precedence of the logical operators
        <pre>and</pre>, <pre>or</pre> and <pre>not</pre>.</html>"));
end LogicPrecedence;
