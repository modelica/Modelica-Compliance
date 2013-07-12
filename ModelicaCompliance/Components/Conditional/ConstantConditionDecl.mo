within ModelicaCompliance.Components.Conditional;

model ConstantConditionDecl
  extends Icons.TestCase;

  Real x = 3 if true;
  Real y = 5 if false;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"4.4.5"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests component declarations with constant conditions. This
        test only checks that it's possible to declare components with parameter
        conditions, not that they are actually handled correctly.</html>"));
end ConstantConditionDecl;
