within ModelicaCompliance.Components.Prefixes;

model DiscreteValidClassType
  extends Icons.TestCase;

  connector C
    flow Real f;
    Real d;
  end C;

  record R
    Real x;
  end R;

  model M
    discrete C c1;
    C c2;
  end M;

  discrete Real x;
  M m;
  discrete R r;
equation
  connect(m.c1, m.c2);

  when true then
    x = 2.0;
    m.c1.d = 4.0;
    m.c2.f = 5.0;
    r.x = 6.0;
  end when;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"4.4.2.2"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that the type prefix <pre>discrete</pre> can be
        applied to type, record and connector components.</html>"));
end DiscreteValidClassType;
