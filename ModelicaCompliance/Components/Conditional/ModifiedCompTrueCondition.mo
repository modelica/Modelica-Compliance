within ModelicaCompliance.Components.Conditional;

model ModifiedCompTrueCondition
  extends Icons.TestCase;

  model A
    Real x = 2.0 if true;
  end A;

  A a(x = 3.0);

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"4.4.5"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that a modifier on a conditional component that is not
        removed from the DAE is handled correctly.</html>"));
end ModifiedCompTrueCondition;
