within ModelicaCompliance.Components.Conditional;

model InvalidUsageModifier
  extends Icons.TestCase;

  model A
    Real y = 1.0;
  end A;

  model B
    Real x = 3.0 if true;
    A a(y = x);
  end B;

  B b;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"4.4.5"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that a conditional component is not allowed to be used
        in a modifier. Conditional components may only be modified or used in
        connections.</html>"));
end InvalidUsageModifier;
