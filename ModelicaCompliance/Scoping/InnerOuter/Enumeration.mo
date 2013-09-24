within ModelicaCompliance.Scoping.InnerOuter;

model Enumeration
  extends Icons.TestCase;

  package P
    type E = enumeration(
        four,
        one,
        two,
        three,
        five);

    class A
      outer E T0;
    end A;
    
    class C
      outer E T0;
    end C;

    class B
      inner E T0 = E.five;
      A a1, a2; // B.T0, B.a1.T0 and B.a2.T0 is the same variable.
      C c;
    end B;
  end P;

  P.B b;

equation
  assert(b.a1.T0 == P.E.five, "b.a1.T0 was not set to the correct value");
  assert(b.a2.T0 == P.E.five, "b.a2.T0 was not set to the correct value");
  assert(b.T0 == P.E.five, "b.T0 was not set to the correct value");
  assert(b.c.T0 == P.E.five, "b.c.T0 was not set to the correct value");

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"5.4"})),
    experiment(StopTime = 0.01),
    Documentation(info = "<html>Checks that we can use enumerations for inner/outer.</html>"));
end Enumeration;
