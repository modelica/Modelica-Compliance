within ModelicaCompliance.Scoping.InnerOuter;

model OuterInPackage
  extends Icons.TestCase;

  class A
    package P
        outer constant Integer T0;
    end P;
    Integer T = P.T0;
  end A;

  class B
    inner constant Integer T0 = 10;
    A a;
  end B;

  B b;

equation 
  assert(b.a.T == 10, "b.a.T0 was not set to the correct value");
  assert(b.T0 == 10, "b.T0 was not set to the correct value");
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"5.4"})),
    experiment(StopTime = 0.01),
    Documentation(info = "<html>Checks that we can have an outer inside a pacakge.</html>"));
end OuterInPackage;