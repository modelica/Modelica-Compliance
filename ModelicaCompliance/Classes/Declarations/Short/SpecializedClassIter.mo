within ModelicaCompliance.Classes.Declarations.Short;

model SpecializedClassIter
  extends Icons.TestCase;

  function f
    input Real x;
    output Real y;
  algorithm
    y := x;
  end f;

  class f2 = f;
  class f3 = f2;
  Real x = f3(23.0);

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"4.5.1"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>If a short class definition does not specify any specialized
        class the new class definition will inherit the specialized class. This
        test checks that this rules also applies iteratively.</html>"));
end SpecializedClassIter;
