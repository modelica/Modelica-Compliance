within ModelicaCompliance.Scoping.Visibility;

model ModifyProtectedClass
  extends Icons.TestCase;

  model A
  protected
    model B
      Real x = 2.0;
    end B;

    B b;
  end A;

  A a(B(x = 4.0));
      
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"4.1"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Checks that protected classes can't be modified outside of
        the scope they are defined in.</html>"));
end ModifyProtectedClass;
