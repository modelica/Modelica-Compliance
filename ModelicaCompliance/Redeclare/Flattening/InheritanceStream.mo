within ModelicaCompliance.Redeclare.Flattening;

model InheritanceStream
  extends Icons.TestCase;

  connector C
    Real e;
    flow Real f;
    replaceable stream Real s;
  end C;

  model A
    C c;
  end A;

  A a1, a2;
  Real x = inStream(a1.c.s);
equation
  a1.c.e = 3.0;
  a1.c.f = 2.0;
  a1.c.s = 2.0;
  a2.c.s = 4.0;
  connect(a1.c, a2.c);

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
    info = "<html>Checks that the stream prefix of the original declaration
      is inherited by the new declaration. Calling inStream on c1.s should
      otherwise be illegal.</html>"));
end InheritanceStream;
