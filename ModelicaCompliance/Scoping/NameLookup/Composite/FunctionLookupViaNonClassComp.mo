within ModelicaCompliance.Scoping.NameLookup.Composite;

model FunctionLookupViaNonClassComp
  extends Icons.TestCase;

  class A
    class B
      class C
        function f
          input Real x;
          output Real y;
        algorithm
          y := 2.0 * x;
        end f;
      end C;

      constant C c;
    end B;
  end A;

  A a;
  Real x = a.B.c.f(4.0); // c is not a class, so this is illegal.

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"5.3.2"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Checks that looking up a function via a component is only
        allowed if the rest of the composite name consists of class references.</html>"));
end FunctionLookupViaNonClassComp;
