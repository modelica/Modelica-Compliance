within ModelicaCompliance.Inheritance.Flattening;

model VisibilityHeadingInheritance
  extends Icons.TestCase;

  model A
  protected
    Real x = 2;
  end A;
  
  model B
    extends A;
    Real y = x;
  end B;

  B b;
  Real z = b.y;
equation
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"7.1.2"})),
    experiment(StopTime = 0.01),
    Documentation(
    info = "<html>Tests that protected/public heading are not inherited, i.e.
      they don't affect elements in the derived class.</html>"));
end VisibilityHeadingInheritance;
