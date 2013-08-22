within ModelicaCompliance.Scoping.NameLookup.Composite;

model FunctionLookupViaClassComp
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
    end B;
  end A;

  A a;
  Real x = a.B.C.f(4.0);

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"5.3.2"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Checks that it's allowed to look up a function via a component
        if the rest of the composite name consists of class references.</html>"));
end FunctionLookupViaClassComp;
