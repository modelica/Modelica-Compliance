within ModelicaCompliance.Scoping.InnerOuter;

model Record
  extends Icons.TestCase;

  package P
    partial record R1
      Real x;
      String y;
      Boolean z = false;
      Integer w;
    end R1;

    record R2
      extends R1;
      Real a = 10;
      Real b = 20;
    end R2;

    class A
      outer R1 T0;
    end A;

    class C
      outer R1 T0;
    end C;

    class B
      inner R2 T0 = R2(1.0, "1.0", true, 1);
      A a1, a2; // B.T0, B.a1.T0 and B.a2.T0 is the same variable
      C c;
    end B;
  end P;

  P.B b;

equation 
  assert(b.a1.T0.z == true, "b.a1.T0.z was not set to the correct value");
  assert(b.a2.T0.z == true, "b.a2.T0.z was not set to the correct value");
  assert(b.c.T0.z == true, "b.c.T0.z was not set to the correct value");
  assert(b.T0.z == true, "b.a2.T0.z was not set to the correct value");

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"5.4"})),
    experiment(StopTime = 0.01),
    Documentation(info = "<html>Checks that we can use records for inner/outer.</html>"));
end Record;