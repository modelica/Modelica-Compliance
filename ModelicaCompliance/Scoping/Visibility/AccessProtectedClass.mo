within ModelicaCompliance.Scoping.Visibility;


model AccessProtectedClass
  extends Icons.TestCase;

  model A
  protected
    model B
      Real x = 42.0;
    end B;
  end A;

  A.B b;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"4.1"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Checks that a protected component may not be accessed
        outside the scope it's declared in.</html>"));
end AccessProtectedClass;
