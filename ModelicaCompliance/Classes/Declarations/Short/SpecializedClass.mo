within ModelicaCompliance.Classes.Declarations.Short;

model SpecializedClass
  extends Icons.TestCase;

  function f
    input Real x;
    output Real y;
  algorithm
    y := x;
  end f;

  class f2 = f;
  Real x = f2(23.0);

  annotation (
  __ModelicaAssociation(TestCase(shouldPass = false, section = {"4.5.1"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>If a short class definition does not specify any specialized
        class the new class definition will inherit the specialized class.</html>"));
end SpecializedClass;
