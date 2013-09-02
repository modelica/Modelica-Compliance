within ModelicaCompliance.Scoping.Visibility;

model LocalAccessProtectedClass
  extends Icons.TestCase;

  A a;

protected
  model A
    Real x = 2.0;
  end A;

  A aprotected;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"4.1"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Checks that a protected class can be accessed in the
        class where it's declared.</html>"));
end LocalAccessProtectedClass;
