within ModelicaCompliance.Scoping.Visibility;

model LocalAccessProtectedComp
  extends Icons.TestCase;

  Real x = y;

protected
  Real y = 2.0;
  Real z = y;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"4.1"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Checks that a protected component can be accessed in the
        class where it's declared.</html>"));
end LocalAccessProtectedComp;
