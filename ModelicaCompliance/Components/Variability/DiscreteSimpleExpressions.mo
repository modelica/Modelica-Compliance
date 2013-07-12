within ModelicaCompliance.Components.Variability;

model DiscreteSimpleExpressions
  extends Icons.TestCase;

  type E = enumeration(one, two);

  discrete Real r;
  discrete Integer i;
  discrete Boolean b;
  discrete String s;
  discrete E e;
  discrete Real x, y, z;
  constant Real c = 1.0;
  parameter Real p = 2.0;
equation
  when sample(0.0, 1.0) then
    r = 1.0;
    i = 2;
    b = true;
    s = "string";
    e = E.one;
    x = c;
    y = p;
    z = r;
  end when;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"3.8.3"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that literals and constant, parameter and discrete
        variables can be assigned to variables declared as <pre>discrete</pre>.</html>"));
end DiscreteSimpleExpressions;
