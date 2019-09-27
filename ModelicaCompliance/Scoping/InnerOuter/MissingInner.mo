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
    __ModelicaAssociation(TestCase(shouldPass = truesection = {"5.4"})),
    experiment(StopTime = 0.01),
    Documentation(info = "<html>Missing inner is now allowed.</html>"));
end MissingInner;
