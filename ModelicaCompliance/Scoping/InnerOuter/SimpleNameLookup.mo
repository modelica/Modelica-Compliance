within ModelicaCompliance.Scoping.InnerOuter;

model SimpleNameLookup
  extends Icons.TestCase;

  class A
    outer Integer T0;
  end A;
  
  class B
    inner Integer T0 = 10;
    A a1, a2; // B.T0, B.a1.T0 and B.a2.T0 is the same variable
  end B;
  
  B b;
equation
  assert(b.T0 == 10, "b.T0 was not set correctly!");
  assert(b.a1.T0 == 10, "outer b.a1.T0 was not set correctly to the value of the inner!");
  assert(b.a2.T0 == 10, "outer b.a1.T0 was not set correctly to the value of the inner!");
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"5.4"})),
    experiment(StopTime = 0.01),
    Documentation(info = "<html>Checks that inner and outer have the same value.</html>"));
end SimpleNameLookup;