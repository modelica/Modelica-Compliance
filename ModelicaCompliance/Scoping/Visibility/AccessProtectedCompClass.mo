within ModelicaCompliance.Scoping.Visibility;

model AccessProtectedCompClass
  extends Icons.TestCase;

  model A
  protected
    function f
      input Real x;
      output Real y;
    algorithm
      y := x * 2.0;
    end f;
  end A;

  A a;
  Real x = a.f(23.0);

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"4.1"})),
    experiment(StopTime = 0.01),
    Documentation(
    info = "<html>Checks that a protected class in a component may not be
      accessed from outside. A function is used as the class, since functions
      are the only classes accessable via dot-notation on a component.</html>"));
end AccessProtectedCompClass;
