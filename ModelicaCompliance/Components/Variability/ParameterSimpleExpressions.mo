within ModelicaCompliance.Components.Variability;

model ParameterSimpleExpressions
  extends Icons.TestCase;

  type E = enumeration(one, two);

  parameter Real r = 1.0;
  parameter Integer i = 2;
  parameter Boolean b = true;
  parameter String s = "fish";
  parameter E e = E.one;
  parameter Real x = r;
  constant Real c = 1.0;
  parameter Real y = c;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"3.8.2"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that literals, constant variables and parameter
        variables can be assigned to variables declared as <pre>parameter</pre>.</html>"));
end ParameterSimpleExpressions;
