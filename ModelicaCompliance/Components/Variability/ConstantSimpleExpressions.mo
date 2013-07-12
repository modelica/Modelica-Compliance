within ModelicaCompliance.Components.Variability;

model ConstantSimpleExpressions
  extends Icons.TestCase;

  type E = enumeration(one, two);

  constant Real r = 1.0;
  constant Integer i = 2;
  constant Boolean b = true;
  constant String s = "fish";
  constant E e = E.one;
  constant Real x = r;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"3.8.1"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that literals and other constant variables can be
        assigned to variables declared as <pre>constant</pre>.</html>"));
end ConstantSimpleExpressions;
