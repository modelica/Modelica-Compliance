within ModelicaCompliance.Redeclare.ConstrainingType;

model RedeclareConstrainingTypeComponent
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
    replaceable B b constrainedby A;
  end D;

  class E
    extends D(replaceable C b constrainedby C);
  end E;

  E e(redeclare A b);

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that it's possible to redeclare the constraining type
        of a component. Redeclaring the type of b to A should be illegal after
        redeclaring the constraining type to be C, since A is not a subtype of C.</html>"));
end RedeclareConstrainingTypeComponent;
