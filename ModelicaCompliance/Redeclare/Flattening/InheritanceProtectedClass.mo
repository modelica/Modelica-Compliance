within ModelicaCompliance.Redeclare.Flattening;

model InheritanceProtectedClass
  extends Icons.TestCase;

  model A
    C1 c;
  protected
    replaceable class C1
      Real x;
    end C1;
  end A;

  model B
    class C2
      Real x = 2;
    end C2;

    extends A(replaceable class C1 = C2);
  end B;

  class C3
    Real x = 3;
  end C3;

  B b(redeclare class C1 = C3);

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false)),
    experiment(StopTime = 0.01),
    Documentation(
    info = "<html>Checks that the protected prefix of the original declaration
      is inherited by the new declaration. The redeclaration on b will be
      illegal in that case, since protected classes may not be modified.</html>"));
end InheritanceProtectedClass;
