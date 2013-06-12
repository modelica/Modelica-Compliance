within ModelicaCompliance.Redeclare.Restrictions;

model DoubleRedeclareWithoutReplaceable
  extends Icons.TestCase;

  model M1
    Real x = 1.0;
  end M1;

  model M2
    Real x = 2.0;
    Real y = 3.0;
  end M2;

  model A
    replaceable M1 m;
  end A;

  model B
    extends A(redeclare M1 m);
  end B;

  model C
    extends B(redeclare M2 m);
  end C;

  C c;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that it's not allowed to redeclare a previously
        redeclared element if the previous redeclaration didn't use redeclare
        replaceable.</html>"));
end DoubleRedeclareWithoutReplaceable;
