within ModelicaCompliance.Redeclare.ConstrainingType;

model RedeclareConstrainingTypeClass
  extends Icons.TestCase;

  class A
    Real x = 1.0;
  end A;

  class B
    Real x = 2.0;
    Real y = 3.0;
  end B;

  class C
    replaceable class X = A;
  end C;

  class D
    extends C(replaceable model X = B constrainedby B);
  end D;

  class E
    extends D(redeclare model X = A);
  end E;

  E e;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that it's possible to redeclare the constraining type
        of a class. Redeclaring X to extend A in E should be illegal, since A is
        not a subtype of the new constraining class B.</html>"));
end RedeclareConstrainingTypeClass;
