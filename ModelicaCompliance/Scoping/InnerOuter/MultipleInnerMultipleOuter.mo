within ModelicaCompliance.Scoping.InnerOuter;

model MultipleInnerMultipleOuter
  extends Icons.TestCase;

  record R
    Integer a = 100;
    Integer b = 200;
  end R;

  class A
    outer constant R T0;
    outer constant R T1;
  end A;

  class B
    inner constant R T0 = R(1, 2);
    A a1;
    Integer x1 = a1.T0.a;
    Integer x2 = a1.T0.b;
    Integer x3 = a1.T1.a;
    Integer x4 = a1.T1.b;
  end B;

  class C
    inner constant R T1 = R(3, 4);
    A a2;
    Integer y1 = a1.T0.a;
    Integer y2 = a1.T0.b;
    Integer y3 = a1.T1.a;
    Integer y4 = a1.T1.b;
  end C;

  extends B;
  extends C;

equation 
  assert(x1 == 1, "x1 was not set to the correct value!");
  assert(x2 == 2, "x2 was not set to the correct value!");
  assert(x3 == 3, "x3 was not set to the correct value!");
  assert(x4 == 4, "x4 was not set to the correct value!");
  assert(y1 == 1, "y1 was not set to the correct value!");
  assert(y2 == 2, "y2 was not set to the correct value!");
  assert(y3 == 3, "y3 was not set to the correct value!");
  assert(y4 == 4, "y4 was not set to the correct value!");
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"5.4"})),
    experiment(StopTime = 0.01),
    Documentation(info = "<html>Checks that order of declarations for the inner types do not matter.</html>"));
end MultipleInnerMultipleOuter;