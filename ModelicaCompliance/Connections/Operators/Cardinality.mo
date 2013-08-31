within ModelicaCompliance.Connections.Operators;

model Cardinality
  extends Icons.TestCase;

  connector C
    Real e;
    flow Real f;
  end C;

  model M
    C c1, c2, c3, c4, c5;
    Integer n1 = cardinality(c1);
    Integer n2 = cardinality(c2);
    Integer n3 = cardinality(c4);
  end M;

  M m;
equation
  connect(m.c1, m.c2);
  connect(m.c2, m.c3);
  connect(m.c2, m.c4);
  connect(m.c4, m.c5);
  m.c1.e = 1.0;
  m.c1.f = 1.0;
  m.c2.f = 2.0;
  m.c3.f = 3.0;
  m.c4.f = 4.0;

  assert(m.n1 == 1, "cardinality(c1) was incorrectly evaluated.");
  assert(m.n2 == 3, "cardinality(c2) was incorrectly evaluated.");
  assert(m.n3 == 2, "cardinality(c4) was incorrectly evaluated.");

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"3.7.2"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests the cardinality operator.</html>"));
end Cardinality;
