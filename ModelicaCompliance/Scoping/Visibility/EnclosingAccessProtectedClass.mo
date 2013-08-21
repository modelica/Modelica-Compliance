within ModelicaCompliance.Scoping.Visibility;

model EnclosingAccessProtectedClass
  extends Icons.TestCase;

  model B
    A a;
  end B;

  B b;
protected
  model A
    Real x = 5.25;
  end A;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"4.1"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Checks that a class declared in an enclosing
        scope can be accessed even if it's protected.</html>"));
end EnclosingAccessProtectedClass;
