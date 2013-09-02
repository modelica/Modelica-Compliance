within ModelicaCompliance.Scoping.InnerOuter;

model Array5
  extends Icons.TestCase;

  class B

    type T1 = Real[10](each unit = "V");
    type T2 = Real(unit = "K");

    class A
      outer T2 p; // T1 is not subtype of T2
      Real x = p[1];
    end A;

    inner T1 p = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10};

    A a;
  end B;

  B b;

equation
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"5.5"})),
    experiment(StopTime = 0.01),
    Documentation(info = "<html>Checks that inner and outer of different types are not allowed.</html>"));
end Array5;