within ModelicaCompliance.Scoping.Visibility;


model AccessProtectedClassClass
  extends Icons.TestCase;

  model A
  protected
    model B
      model C
        Real x = 6.2;
      end C;
    end B;
  end A;

  A.B.C c;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"4.1"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Checks that a class inside a protected class is not
        accessible outside the scope where the protected class is declared.</html>"));
end AccessProtectedClassClass;
