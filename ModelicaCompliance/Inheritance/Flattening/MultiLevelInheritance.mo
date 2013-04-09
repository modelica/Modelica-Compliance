within ModelicaCompliance.Inheritance.Flattening;

model MultiLevelInheritance
  extends Icons.TestCase;

  class A
    Real x = 2;
  end A;
  
  class B
    extends A;
  end B;

  class C
    extends B;
  end C;

  C c;
  Real y = c.x;
equation
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
    info = "<html>Tests that inheritance works through multiple levels.</html>"));
end MultiLevelInheritance;
