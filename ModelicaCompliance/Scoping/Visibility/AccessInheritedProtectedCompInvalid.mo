within ModelicaCompliance.Scoping.Visibility;

model AccessInheritedProtectedCompInvalid
  extends Icons.TestCase;

  model M
  protected
    constant Real x = 2.53;
  end M;

  extends M;
  Real y = M.x;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"4.1"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Checks that it's not valid to access a protected component
        via dot-notation, even if it has been inherited with an extends. I.e.
        accessing M.x should be forbidden, even though the protected component x
        has been inherited through the extends.</html>"));
end AccessInheritedProtectedCompInvalid;
