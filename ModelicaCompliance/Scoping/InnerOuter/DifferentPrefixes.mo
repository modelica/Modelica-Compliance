within ModelicaCompliance.Scoping.InnerOuter;

model DifferentPrefixes
  extends Icons.TestCase;

  class A
    outer parameter Integer T0;
    constant Integer x = T0;
  end A;

  class B
    inner constant Integer T0 = 1;
    A a;
  end B;

  B b;

equation 
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"5.4"})),
    experiment(StopTime = 0.01),
    Documentation(info = "<html>Checks different type prefixes for outer and inner generates error.</html>"));
end DifferentPrefixes;