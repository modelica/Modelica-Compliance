within ModelicaCompliance.Scoping.NameLookup.Composite;

model FunctionLookupViaArrayElement
  extends Icons.TestCase;

  class A
    function f
      input Real x;
      output Real y = x;
    algorithm
    end f;
  end A;

  A a[3];
  Real x = a[2].f(2.0);

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"5.3.2"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Checks that it's allowed to look up a function via an
        array element if the element is a scalar component.</html>"));
end FunctionLookupViaArrayElement;
