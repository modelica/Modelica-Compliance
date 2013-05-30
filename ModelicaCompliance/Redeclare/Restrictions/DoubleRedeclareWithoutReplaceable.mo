within ModelicaCompliance.Redeclare.Restrictions;

model DoubleRedeclareWithoutReplaceable
  extends Icons.TestCase;

  model A
    replaceable Real x = 2.0;
  end A;

  model B
    extends A(redeclare Real x = 3.0);
  end B;

  model C
    extends B(redeclare Real x = 4.0);
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
