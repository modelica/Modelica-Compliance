within ModelicaCompliance.Scoping.NameLookup.Imports;


model ImportScopeType
  extends Icons.TestCase;

  encapsulated package P
    constant Real x = 2.0;
  end P;

  encapsulated package P2
    import ModelicaCompliance.Scoping.NameLookup.Imports.ImportScopeType.P.x;
    constant Real y = x;
  end P2;

  model M
    import ModelicaCompliance.Scoping.NameLookup.Imports.ImportScopeType.P.x;
    Real y = x;
  end M;

  function f
    import ModelicaCompliance.Scoping.NameLookup.Imports.ImportScopeType.P.x;
    input Real i;
    output Real o;
  algorithm
    o := i * x;
  end f;

  Real a = P2.y;
  Real b = f(4.0);
  M m;
equation
  assert(Util.compareReal(a, 2.0), "a was not set correctly.");
  assert(Util.compareReal(b, 8.0), "b was not set correctly.");
  assert(Util.compareReal(m.y, 2.0), "m.y was not set correctly.");

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"13.2.1.2"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Checks that it's allowed to import into any kind of class.</html>"));
end ImportScopeType;
