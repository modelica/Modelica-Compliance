within ModelicaCompliance.Scoping.InnerOuter;

model Array4
  extends Icons.TestCase;

  class B

    class A
      outer Real p[1, 6]; // error, since different number of sizes
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
end Array4;