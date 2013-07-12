within ModelicaCompliance.Components.Conditional;

model CompRemovalBalancedParam
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
  A a3;
equation
  a1.c.e = 2.0;
  a1.c.f = 4.0;
  connect(a1.c, a2.c);
  connect(a1.c, a3.c);
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"4.4.5"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that a component declared with a condition that is
        a parameter with value false is removed from the DAE. The model becomes
        unbalanced if a2 is not removed along with the connection to it.</html>"));
end CompRemovalBalancedParam;
