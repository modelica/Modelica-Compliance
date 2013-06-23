within ModelicaCompliance.Redeclare.ConstrainingType;

model RedeclareNonSubtypeClass
  extends Icons.TestCase;

  class A
    Real x = 1.0;
  end A;

  class B
    Real x = 2.0;
    Real y = 3.0;
  end B;

  class C
    replaceable class D = B constrainedby B;
    D d;
  end C;

  C c(redeclare class D = A);

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"7.3.2"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Checks that it's an error if the class in a redeclare is not
        a subtype of the constraining type.</html>"));
end RedeclareNonSubtypeClass;
