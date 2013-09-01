within ModelicaCompliance.Scoping.InnerOuter;

model PartialOuterWrong
  extends Icons.TestCase;

  partial record R
    Integer i;
  end R;

  record RI
    extends R;
    Real a;
  end RI;

  class A
    outer R T0;
    Real x = T0.a; // there is no a component in T0 of type R
  end A;

  class B
    inner RI T0 = RI(10, 10.0);
    A a;
  end B;

  B b;

equation 
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"5.4"})),
    experiment(StopTime = 0.01),
    Documentation(info = "<html>Checks that partial outer cannot access the extra components in the inner full type.</html>"));
end PartialOuterWrong;