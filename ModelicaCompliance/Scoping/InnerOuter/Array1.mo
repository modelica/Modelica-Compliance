within ModelicaCompliance.Scoping.InnerOuter;

model Array1
  extends Icons.TestCase;

  class B

    class A
      outer Integer[2] p;
      Integer x = p[1];
    end A;

    inner Integer p[2] = {1,2};

    A a(x = p[2]);
  end B;

  B b;

equation 
  assert(b.a.x == 2, "b.x was not set to the correct value!");
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"5.5"})),
    experiment(StopTime = 0.01),
    Documentation(info = "<html>Checks that inner and outer arrays are working.</html>"));
end Array1;