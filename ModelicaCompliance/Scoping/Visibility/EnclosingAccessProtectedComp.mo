within ModelicaCompliance.Scoping.Visibility;

model EnclosingAccessProtectedComp
  extends Icons.TestCase;

  model A
    Real y = x;
  end A;

  A a;
protected
  constant Real x = 4.2;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"4.1"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Checks that a component declared in an enclosing
        scope can be accessed even if it's protected.</html>"));
end EnclosingAccessProtectedComp;
