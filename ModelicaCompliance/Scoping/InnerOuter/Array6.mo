within ModelicaCompliance.Scoping.InnerOuter;

model Array6
  extends Icons.TestCase;

  class B

    type E = enumeration(
        one,
        two);

    type T1 = E[3];
    type T2 = Integer;

    class A
      outer T2 p; // T1 is not subtype of T2
      Real x = p[1];
    end A;

    inner T1 p = {1, 2, 2}; // Assign Integer to enumeration should not work!

    A a;
  end B;

  B b;

equation
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"5.5"})),
    experiment(StopTime = 0.01),
    Documentation(info = "<html>Checks that inner and outer of different types are not allowed.</html>"));
end Array6;