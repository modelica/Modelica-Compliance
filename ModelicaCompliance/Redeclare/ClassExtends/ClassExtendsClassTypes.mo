within ModelicaCompliance.Redeclare.ClassExtends;

model ClassExtendsClassTypes
  extends Icons.TestCase;

  model A
    replaceable model M
      Real x = 1.0;
    end M;

    replaceable package P
      constant Real x;
    end P;

    replaceable block B
      Real x = 1.0;
    end B;

    replaceable connector C
      flow Real f;
      Real e = 4.0;
    end C;

    replaceable record R
      Real x = 2.0;
    end R;

    replaceable partial function F
      input Real x;
      output Real y;
    end F;
  end A;

  extends A;

  model extends M
    Real y = 2.0;
  end M;

  package extends P(x = 1.4)
    constant Real y = x;
  end P;

  block extends B
    Real y = 2.0;
  end B;

  connector extends C
    flow Real f2;
    Real e2 = 4.2;
  end C;

  record extends R
    Real y = 42.2;
  end R;

  function extends F
  algorithm
    y := x * 26.0;
  end F;

  M m;
  constant Real z = P.y + P.x;
  B b;
  C c;
  R r;
  Real x = F(2.0);
equation
  assert(Util.compareReal(m.x, 1.0), "m.x was not set correctly.");
  assert(Util.compareReal(m.y, 2.0), "m.y was not set correctly.");
  assert(Util.compareReal(b.x, 1.0), "b.x was not set correctly.");
  assert(Util.compareReal(b.y, 2.0), "b.y was not set correctly.");
  assert(Util.compareReal(c.f, 0.0), "c.f was not set correctly.");
  assert(Util.compareReal(c.e, 4.0), "c.e was not set correctly.");
  assert(Util.compareReal(c.f2, 0.0), "c.f2 was not set correctly.");
  assert(Util.compareReal(c.e2, 4.2), "c.e2 was not set correctly.");
  assert(Util.compareReal(r.x, 2.0), "r.x was not set correctly.");
  assert(Util.compareReal(r.y, 42.2), "r.y was not set correctly.");
  assert(Util.compareReal(x, 52.0), "x was not set correctly.");
  assert(Util.compareReal(z, 2.8), "z was not set correctly.");

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"7.3.1"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that class extends can be used with the different
        types of specialized classes.</html>"));
end ClassExtendsClassTypes;
