within ModelicaCompliance.Redeclare.Flattening;

model InheritanceFlow
  extends Icons.TestCase;

  connector C
    Real e;
    replaceable flow Real f;
  end C;

  model A
    C c(redeclare Real f);
  equation
    c.e = 1.0;
  end A;

  A a;
  C c2, c3;
equation
  connect(a.c, c2);
  connect(c2, c3);

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"7.3"})),
    experiment(StopTime = 0.01),
    Documentation(
    info = "<html>Checks that the flow prefix of the original declaration
      is inherited by the new declaration. The connector will otherwise be
      unbalanced.</html>"));
end InheritanceFlow;
