within ModelicaCompliance.Inheritance.Flattening;

model MultipleInheritance
  extends Icons.TestCase;

  model A
    Real x = 2;
  end A;
  
  model B
    Real y = 3;
  end B;

  extends A;
  extends B;

  Real z = x + y;
equation
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
    info = "<html>Tests that multiple inheritance works.</html>"));
end MultipleInheritance;
