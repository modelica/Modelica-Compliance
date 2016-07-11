within ModelicaCompliance.Scoping.InnerOuter;

model Nested
  extends Icons.TestCase;

  class H
    outer constant Integer j;
    Integer y = j;
  end H;
  
  class A
    outer constant Integer i;
    inner constant Integer j = 100;
    H h;
  end A;

  class B
    inner A a(j = 200);
    C c;
  end B;

  class C
    outer A a;
    Integer x = a.i;
  end C;

  class D
    inner constant Integer i = 10;
  end D;

  extends D;
  B b;

equation 
  assert(b.c.x == 10, "b.c.x was not set to the correct value");
  assert(b.a.j == 200, "b.a.j was not set to the correct value");
  assert(b.a.h.y == 200, "b.a.h.y was not set to the correct value");
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"5.4"})),
    experiment(StopTime = 0.01),
    Documentation(info = "<html>Checks that nested inner outer works.</html>"));
end Nested;