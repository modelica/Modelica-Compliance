within ModelicaCompliance.Components.Conditional;

model InvalidUsageLookup
  extends Icons.TestCase;

  model A
    function f
      input Real x;
      output Real y;
    algorithm
      y := x;
    end f;
  end A;

  A a if true;
  Real x = a.f(2.0);
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"4.4.5"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that a conditional component is not allowed to be used
        as part of name lookup. Conditional components may only be modified or
        used in connections.</html>"));
end InvalidUsageLookup;
