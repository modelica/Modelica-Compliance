within ModelicaCompliance.Scoping.NameLookup.Composite;

model FunctionLookupViaCompNonCall
  extends Icons.TestCase;

  class A
    function f
      input Real x;
      output Real y = x;
    algorithm
    end f;
  end A;

  A a;
  function f = a.f;
  Real x = f(2.0);

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"5.3.2"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Checks that it's only legal to look up a function name via a
        component if the name is used as a function call.</html>"));
end FunctionLookupViaCompNonCall;
