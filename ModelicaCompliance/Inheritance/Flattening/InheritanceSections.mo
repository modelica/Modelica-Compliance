within ModelicaCompliance.Inheritance.Flattening;

model InheritanceSections
  extends Icons.TestCase;

  model A
    Real x, y;
  equation
    x = 2;
  algorithm
    y := 3;
  end A;

  extends A;

equation
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"7.1"})),
    experiment(StopTime = 0.01),
    Documentation(
    info = "<html>Tests the equation and algorithms sections are inherited.</html>"));
end InheritanceSections;
