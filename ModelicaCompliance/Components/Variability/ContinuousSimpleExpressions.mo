within ModelicaCompliance.Components.Variability;

model ContinuousSimpleExpressions
  extends Icons.TestCase;

  type E = enumeration(one, two);

  Real r = 1.0;
  Integer i = 2;
  Boolean b = true;
  String s = "string";
  E e = E.one;

  constant Real c = 4.2;
  parameter Real p = 5.13;
  discrete Real d;

  Real x = c;
  Real y = p;
  Real z = d;
equation
  when sample(0.0, 1.0) then
    d = time;
  end when;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"3.8.4"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that literals and constant, parameter and discrete
        variables can be assigned to variables declared as <pre>constant</pre>.</html>"));
end ContinuousSimpleExpressions;
