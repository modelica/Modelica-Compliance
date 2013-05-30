within ModelicaCompliance.Redeclare.ConstrainingType;

model RedeclareMod
  extends Icons.TestCase;

  model A
    Real x = 1.0;
    Real y = 2.0;
  end A;

  model B
    Real x = 3.0;
    Real y = 4.0;
    Real z = 5.0;
  end B;

  model C
    replaceable A a constrainedby A(x = 5.0, y = 6.0);
  end C;

  model D
    extends C(a(x = 7.0));
  end D;

  model E
    extends D(redeclare B a(y = 8.0));
  end E;

  D d;
  E e;
equation
  assert(Util.compareReal(d.a.x, 7.0), "d.a.x was not set correctly.");
  assert(Util.compareReal(d.a.y, 6.0), "d.a.y was not set correctly.");
  assert(Util.compareReal(e.a.x, 7.0), "e.a.x was not set correctly.");
  assert(Util.compareReal(e.a.y, 8.0), "e.a.y was not set correctly.");
  assert(Util.compareReal(e.a.z, 5.0), "e.a.z was not set correctly.");

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Checks that an element modification of a replaceable element
        is applied to both the element's type and it's constraining type.</html>"));
end RedeclareMod;
