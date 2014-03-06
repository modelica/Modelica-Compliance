within ModelicaCompliance.Redeclare.Flattening;

model InheritanceStream
  extends Icons.TestCase;

  connector C
    Real e;
    flow Real f;
    replaceable stream Real s;
  end C;

  model A
    C c(e = 3.0, s = 2.0);
  end A;

  model B
    C c(f = 5.0, s = 4.0);
  end B;

  A a;
  B b;

  Real x = inStream(a.c.s);
equation
  connect(a.c, b.c);

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"7.3"})),
    experiment(StopTime = 0.01),
    Documentation(
    info = "<html>Checks that the stream prefix of the original declaration
      is inherited by the new declaration. Calling inStream on c1.s should
      otherwise be illegal.</html>"));
end InheritanceStream;
