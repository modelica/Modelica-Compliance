within ModelicaCompliance.Components.Conditional;

model ParameterConditionDecl
  extends Icons.TestCase;

  parameter Boolean b1 = true, b2 = false;

  Real x = 3 if b1;
  Real y = 5 if b2;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"4.4.5"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests component declarations with parameter conditions. This
        test only checks that it's possible to declare components with parameter
        conditions, not that they are actually handled correctly.</html>"));
end ParameterConditionDecl;
