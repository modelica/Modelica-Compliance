within ModelicaCompliance.Components.Prefixes;

model FlowValidClassType
  extends Icons.TestCase;

  record R
    Real f;
  end R;

  connector C
    input Real f;
  end C;

  connector CR
    flow R r;
    Real e;
  end CR;

  connector CC
    flow C c;
    Real e;
  end CC;

  model M
    CR cr(e = 1.0);
    CC cc(e = 2.0);
  end M;

  M m;
  flow Real x = 3.0;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"4.4.2.2"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that the type prefix <pre>flow</pre> can be applied to
        the allowed specialized classes type, record and connector.</html>"));
end FlowValidClassType;
