within ModelicaCompliance.Scoping.NameLookup.Simple;

model UnqualifiedImportPriority
  extends Icons.TestCase;

  model A
    Real x = 1.0;
  end A;

  encapsulated package P
    constant Real x = 2.0;
  end P;

  encapsulated package P2
    constant Real x = 4.0;
  end P2;

  model B // Check that unqualified import has lower priority than local name.
    import ModelicaCompliance.Scoping.NameLookup.Simple.UnqualifiedImportPriority.P.*;
    Real x = 3.0;
    Real y = x;
  end B;

  model C // Check that unqualified import has lower priority than inherited name.
    extends A;
    import ModelicaCompliance.Scoping.NameLookup.Simple.UnqualifiedImportPriority.P.*;
    Real y = x;
  end C;
   
  model D // Check that unqualified import has lower priority than qualified import.
    import ModelicaCompliance.Scoping.NameLookup.Simple.UnqualifiedImportPriority.P.*;
    import ModelicaCompliance.Scoping.NameLookup.Simple.UnqualifiedImportPriority.P2.x;
    Real y = x;
  end D;

  model E // Check that unqualified import works at all.
    import ModelicaCompliance.Scoping.NameLookup.Simple.UnqualifiedImportPriority.P.*;
    Real y = x;
  end E;

  B b;
  C c;
  D d;
  E e;
equation
  assert(Util.compareReal(b.y, 3.0), "b.y was not set correctly.");
  assert(Util.compareReal(c.y, 1.0), "c.y was not set correctly.");
  assert(Util.compareReal(d.y, 4.0), "d.y was not set correctly.");
  assert(Util.compareReal(e.y, 2.0), "e.y was not set correctly.");

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"5.3.1"})),
    experiment(StopTime = 0.01),
    Documentation(
    info = "<html>Tests that qualified imports have lower priority than local
      and inherited names during name lookup. </html>"));
end UnqualifiedImportPriority;
