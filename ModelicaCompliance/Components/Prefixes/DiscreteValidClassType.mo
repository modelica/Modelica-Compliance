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
    discrete C c1(f(fixed = true), d(fixed = true));
    C c2;
  equation
    when true then
      c1.d = 4.0;
      c1.f = 5.0;
    end when;
  end M;

  discrete Real x(fixed = true);
  M m;
  discrete R r(x(fixed = true));
equation
  connect(m.c1, m.c2);

  when true then
    x = 2.0;
    r.x = 6.0;
  end when;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"4.4.2.2"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that the type prefix <pre>discrete</pre> can be
        applied to type, record and connector components.</html>"));
end DiscreteValidClassType;
