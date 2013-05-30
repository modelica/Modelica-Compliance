within ModelicaCompliance.Redeclare.ConstrainingType;

model RedeclareNonSubtypeComponentImpl
  extends Icons.TestCase;

  class A
    Real x = 1.0;
  end A;

  class B
    Real x = 2.0;
    Real y = 3.0;
  end B;

  class C
    replaceable B b;
  end C;

  C c(redeclare A b);

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Checks that it's an error if the type of a component in a
        redeclare is not a subtype of the implicit constraining type.</html>"));
end RedeclareNonSubtypeComponentImpl;
