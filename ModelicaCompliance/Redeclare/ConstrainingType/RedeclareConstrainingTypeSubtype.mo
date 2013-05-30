within ModelicaCompliance.Redeclare.ConstrainingType;

model RedeclareConstrainingTypeSubtype
  extends Icons.TestCase;

  class A
    Real x = 1.0;
  end A;

  class B
    Real x = 2.0;
    Real y = 2.0;
  end B;

  class C
    Real x = 3.0;
    Real y = 5.0;
  end C;

  class D
    replaceable B b constrainedby B;
  end D;

  class E
    extends D(replaceable C b constrainedby A);
  end E;

  E e;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that the constraining type of a redeclaration must be
        a subtype of the constraining type that it replaces.</html>"));
end RedeclareConstrainingTypeSubtype;
