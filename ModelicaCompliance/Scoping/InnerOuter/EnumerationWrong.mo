within ModelicaCompliance.Scoping.InnerOuter;

model EnumerationWrong
  extends Icons.TestCase;

  package P
    type E1 = enumeration(one, two);
    type E2 = enumeration(two, three);

    class A
      outer E2 T0;
    end A;
    
    class C
      outer E2 T0 = E2.two;
    end C;

    class B
      inner E1 T0 = E1.two;
      A a1, a2; // B.T0, B.a1.T0 and B.a2.T0 is the same variable
      C c;
    end B;
  end P;

  P.B b;

equation
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"5.4"})),
    experiment(StopTime = 0.01),
    Documentation(info = "<html>Checks that non subtypes between inner and outer generates an error.</html>"));
end EnumerationWrong;