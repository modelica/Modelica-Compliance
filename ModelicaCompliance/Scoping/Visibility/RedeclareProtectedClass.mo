within ModelicaCompliance.Scoping.Visibility;

model RedeclareProtectedClass
  extends Icons.TestCase;

  model A
  protected
    replaceable class B
      Real x = 2.0;
    end B;

    B b;
  end A;

  class C
    Real x = 3.0;
  end C;

  A a(redeclare class B = C);
      
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"4.1"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Checks that protected classes can't be modified outside of
        the scope they are defined in.</html>"));
end RedeclareProtectedClass;
