within ModelicaCompliance.Scoping.InnerOuter;

model PartialOuter
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
  end A;

  class B
    inner RI T0 = RI(10, 10.0);
    A a;
  end B;

  B b;

equation 
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"5.4"})),
    experiment(StopTime = 0.01),
    Documentation(info = "<html>Checks that partial outer is allowed if inner is non partial.</html>"));
end PartialOuter;