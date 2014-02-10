within ModelicaCompliance.Components.Conditional;

model CompRemovalBalanced
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

  A a1;
  A a2 if false;
equation
  connect(a1.c, a2.c);

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"4.4.5"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that a component declared with a condition that is
        false is removed from the DAE. The model becomes structurally singular
        if a2 is not removed along with the connection to it.</html>"));
end CompRemovalBalanced;
