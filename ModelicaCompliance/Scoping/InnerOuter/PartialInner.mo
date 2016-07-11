within ModelicaCompliance.Scoping.InnerOuter;

model PartialInner
  extends Icons.TestCase;

  partial record R
    Integer i;
  end R;

  class A
    outer R T0;
  end A;

  class B
    inner R T0 = R(10);
    A a;
  end B;

  B b;

equation 
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"5.4"})),
    experiment(StopTime = 0.01),
    Documentation(info = "<html>Checks that partial inner type generates error.</html>"));
end PartialInner;