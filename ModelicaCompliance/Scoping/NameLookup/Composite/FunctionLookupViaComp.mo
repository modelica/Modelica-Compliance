within ModelicaCompliance.Scoping.NameLookup.Composite;

model FunctionLookupViaComp
  extends Icons.TestCase;

  class A
    function f
      input Real x;
      output Real y = x;
    algorithm
    end f;
  end A;

  A a;
  Real x = a.f(2.0);

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"5.3.2"})),
    experiment(StopTime = 0.01),
    Documentation(
    info = "<html>Checks that it's allowed to look up a function via a component.</html>"));
end FunctionLookupViaComp;
