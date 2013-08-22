within ModelicaCompliance.Scoping.NameLookup.Composite;

model FunctionLookupViaArrayComp
  extends Icons.TestCase;

  class A
    function f
      input Real x;
      output Real y = x;
    algorithm
    end f;
  end A;

  A a[3];
  Real x = a.f(2.0);

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"5.3.2"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Checks that it's not allowed to look up a function via an
        array component.</html>"));
end FunctionLookupViaArrayComp;
