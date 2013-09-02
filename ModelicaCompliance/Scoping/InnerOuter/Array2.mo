within ModelicaCompliance.Scoping.InnerOuter;

model Array2
  extends Icons.TestCase;

  class B

    class A
      outer Real p; // error, since different types
      Real x = p[1];
    end A;

    inner Real p[1] = {1};

    A a;
  end B;

  B b;

equation
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"5.5"})),
    experiment(StopTime = 0.01),
    Documentation(info = "<html>Checks that inner and outer of different types are not allowed.</html>"));
end Array2;