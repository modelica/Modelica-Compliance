within ModelicaCompliance.Scoping.Visibility;


model AccessInheritedProtectedClassInvalid
  extends Icons.TestCase;

  model A
  protected
    encapsulated class B
      Real x = 2.0;
    end B;

    B b;
  end A;

  extends A;
  A.B ab;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"4.1"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Checks that it's not valid to access a protected class via
        dot-notation, even if it has been inherited with an extends. I.e. using
        A.B should be forbidden, even though the protected class B has been
        inherited through the extends.</html>"));
end AccessInheritedProtectedClassInvalid;
