within ModelicaCompliance.Components.Conditional;

model CompRemovalUnbalanced
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

  A a;
  B b1 if false;
  B b2;
equation 
  connect(a.c, b1.c);
  connect(b1.c, b2.c);
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"4.4.5"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that a component declared with a condition that is
      false is removed from the DAE. The test should fail since the model
      becomes structurally singular if b1 is removed.</html>"));
end CompRemovalUnbalanced;
