within ModelicaCompliance.Components.Conditional;

model ModifiedCompFalseCondition
  extends Icons.TestCase;

  model A
    Real x = 2.0 if true;
  end A;

  A a(x = 3.0);

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"4.4.5"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that a modifier on a conditional component that is
      removed from the DAE is handled correctly.</html>"));
end ModifiedCompFalseCondition;
