within ModelicaCompliance.Scoping.InnerOuter;

model MissingInner
  extends Icons.TestCase;

  class A
    outer Integer T0;
  equation
    T0 = 1;
  end A;

  class B
    A a;
  end B;

  B b;

equation 
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"5.4"})),
    experiment(StopTime = 0.01),
    Documentation(info = "<html>Checks that missing inner generates errors.</html>"));
end MissingInner;
