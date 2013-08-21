within ModelicaCompliance.Scoping.Visibility;

model AccessProtectedCompComp
  extends Icons.TestCase;

  model A
    model B
      Real x = 1.3;
    end B;

    protected B b;
  end A;

  A a;
  Real y = a.b.x;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"4.1"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Checks that an element of a protected component may not be
        accessed from outside the scope the component is declared in.</html>"));
end AccessProtectedCompComp;
