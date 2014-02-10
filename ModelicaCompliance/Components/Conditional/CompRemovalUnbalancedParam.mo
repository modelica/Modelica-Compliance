within ModelicaCompliance.Components.Conditional;

model CompRemovalUnbalancedParam
  extends Icons.TestCase;

  connector C
    Real e;
    flow Real f;
  end C;

  model A
    C c;
  equation 
    c.e = 2.0;
  end A;

  model B
    C c;
  equation 
    c.f = 1.0;
  end B;

  parameter Boolean b = false;
  A a;
  B b1 if b;
  B b2;
equation 
  connect(a.c, b1.c);
  connect(b1.c, b2.c);
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"4.4.5"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that a component declared with a condition that is
      a parameter with value false is removed from the DAE. The test should fail
      since the model becomes structurally singular if b1 is removed.</html>"));
end CompRemovalUnbalancedParam;
