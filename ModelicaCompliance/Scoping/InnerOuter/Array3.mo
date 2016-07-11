within ModelicaCompliance.Scoping.InnerOuter;

model Array3
  extends Icons.TestCase;

  class B

    class A
      outer Real p[6]; // error, since different sizes
      Real x = p[5];
    end A;

    inner Real p[10] = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10};

    A a;
  end B;

  B b;

equation
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"5.5"})),
    experiment(StopTime = 0.01),
    Documentation(info = "<html>Checks that inner and outer of different types are not allowed.</html>"));
end Array3;