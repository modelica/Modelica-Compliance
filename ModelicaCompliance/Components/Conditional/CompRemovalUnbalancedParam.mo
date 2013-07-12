within ModelicaCompliance.Components.Conditional;

model CompRemovalUnbalancedParam
  extends Icons.TestCase;

  connector C
    Real e;
    flow Real f;
  end C;

  model A
    C c;
  end A;

  parameter Boolean b = false;
  A a1;
  A a2 if b;
equation
  a1.c.e = 2.0;
  a1.c.f = 4.0;
  connect(a1.c, a2.c);
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"4.4.5"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that a component declared with a condition that is
      a parameter with value false is removed from the DAE. The test should fail
      since the model becomes unbalanced if a2 is removed.</html>"));
end CompRemovalUnbalancedParam;
