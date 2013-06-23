within ModelicaCompliance.Inheritance.Flattening;

model ProtectedInheritance
  extends Icons.TestCase;

  model A
    Real x = 2;
  end A;
  
  model B
  protected
    extends A;
  end B;

  B b;
  Real y = b.x;
equation
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"7.1.2"})),
    experiment(StopTime = 0.01),
    Documentation(
    info = "<html>Tests that inherited elements from an extends-clause in a
      protected section becomes protected. Accessing b.x should therefore not be
      allowed in this test.</html>"));
end ProtectedInheritance;
