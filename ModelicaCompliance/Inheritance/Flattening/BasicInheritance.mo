within ModelicaCompliance.Inheritance.Flattening;

model BasicInheritance
  extends Icons.TestCase;

  model Base
    Integer x = 2;
  end Base;

  extends Base;

equation
  assert(x == 2, "x was not inherited!");

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"7.1"})),
    experiment(StopTime = 0.01),
    Documentation(
    info = "<html>Tests the most basic inheritance where a single component is inherited</html>"));
end BasicInheritance;
