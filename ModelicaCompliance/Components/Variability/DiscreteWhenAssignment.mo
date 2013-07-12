within ModelicaCompliance.Components.Variability;

model DiscreteWhenAssignment
  extends Icons.TestCase;

  discrete Real x;
equation
  when sample(0.0, 1.0) then
    x = 1.0;
  end when;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"4.4.4"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that a Real variable declared with the prefix
        <pre>discrete</pre> can be assigned in a when-clause.</html>"));
end DiscreteWhenAssignment;
