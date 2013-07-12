within ModelicaCompliance.Components.Variability;

model DiscreteNotWhenAssignment
  extends Icons.TestCase;

  discrete Real x = 1.0;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"4.4.4"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that a Real variable declared with the prefix
        <pre>discrete</pre> must be assigned in a when-clause.</html>"));
end DiscreteNotWhenAssignment;
