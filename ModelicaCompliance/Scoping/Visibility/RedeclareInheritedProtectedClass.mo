within ModelicaCompliance.Scoping.Visibility;

model RedeclareInheritedProtectedClass
  extends Icons.TestCase;

  model A
  protected
    replaceable class B
      Real x = 2.0;
    end B;

    B b;
  end A;

  class C
    Real x = 4.0;
  end C;

  extends A(redeclare class B = C);
equation
  assert(Util.compareReal(b.x, 4.0), "b.x was not set correctly.");
      
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"4.1"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Checks that protected classes are allowed to be redeclared in
        the scope that they are inherited into.</html>"));
end RedeclareInheritedProtectedClass;
