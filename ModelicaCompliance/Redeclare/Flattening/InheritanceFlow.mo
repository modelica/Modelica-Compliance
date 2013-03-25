within ModelicaCompliance.Redeclare.Flattening;

model InheritanceFlow
  extends Icons.TestCase;

  connector C
    Real e;
    replaceable flow Real f;
  end C;

  C c1(redeclare Real f);
  C c2, c3;
equation
  connect(c1, c2);
  connect(c2, c3);

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
    info = "<html>Checks that the flow prefix of the original declaration
      is inherited by the new declaration. The connector will otherwise be
      unbalanced.</html>"));
end InheritanceFlow;
