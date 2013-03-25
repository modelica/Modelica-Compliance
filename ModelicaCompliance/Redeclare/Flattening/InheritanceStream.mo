within ModelicaCompliance.Redeclare.Flattening;

model InheritanceStream
  extends Icons.TestCase;

  connector C
    Real e;
    flow Real f;
    replaceable stream Real s;
  end C;

  C c1;
  C c2;
  Real x = inStream(c1.s);
equation
  connect(c1, c2);

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
    info = "<html>Checks that the stream prefix of the original declaration
      is inherited by the new declaration. Calling inStream on c1.s should
      otherwise be illegal.</html>"));
end InheritanceStream;
