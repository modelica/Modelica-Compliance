within ModelicaCompliance.Scoping.Visibility;

model AccessProtectedClassComp
  extends Icons.TestCase;

  package P
  protected
    package P2
      constant Real x = 2.3;
    end P2;
  end P;

  Real y = P.P2.x;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"4.1"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Checks that a component inside a protected class is not
        accessible outside the scope where the protected class is declared.</html>"));
end AccessProtectedClassComp;
