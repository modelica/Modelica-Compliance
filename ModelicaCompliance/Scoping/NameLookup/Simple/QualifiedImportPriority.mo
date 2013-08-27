within ModelicaCompliance.Scoping.NameLookup.Simple;

model QualifiedImportPriority
  extends Icons.TestCase;

  model A
    Real x = 1.0;
  end A;

  encapsulated package P
    constant Real x = 2.0;
  end P;

  model B // Check that qualified import has lower priority than local name.
    import ModelicaCompliance.Scoping.NameLookup.Simple.QualifiedImportPriority.P.x;
    Real x = 3.0;
    Real y = x;
  end B;

  model C // Check that qualified import has lower priority than inherited name.
    extends A;
    import ModelicaCompliance.Scoping.NameLookup.Simple.QualifiedImportPriority.P.x;
    Real y = x;
  end C;
   
  model D // Check that qualified import works at all.
    import ModelicaCompliance.Scoping.NameLookup.Simple.QualifiedImportPriority.P.x;
    Real y = x;
  end D;

  B b;
  C c;
  D d;
equation
  assert(Util.compareReal(b.y, 3.0), "b.y was not set correctly.");
  assert(Util.compareReal(c.y, 1.0), "c.y was not set correctly.");
  assert(Util.compareReal(d.y, 2.0), "d.y was not set correctly.");

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"5.3.1"})),
    experiment(StopTime = 0.01),
    Documentation(
    info = "<html>Tests that qualified imports have lower priority than local
      and inherited names during name lookup. </html>"));
end QualifiedImportPriority;
