within ModelicaCompliance.Connections.Expandable;

model AugmentComplex
  extends Icons.TestCase;

  expandable connector EC
  end EC;

  connector C
    Real e;
    flow Real f;
  end C;

  model M
    C c;
  end M;

  EC ec;
  M m;
equation
  connect(m.c, ec.c);
  m.c.e = 1.0;

  annotation (
  __ModelicaAssociation(TestCase(shouldPass = true, section = {"9.1.3"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that it's possible to augment an expandable connector
        with an array.</html>"));
end AugmentComplex;
