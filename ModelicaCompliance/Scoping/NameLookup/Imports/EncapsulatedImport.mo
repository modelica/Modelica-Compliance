within ModelicaCompliance.Scoping.NameLookup.Imports;


model EncapsulatedImport
  extends Icons.TestCase;

  encapsulated package P
    model M
      Real x = 2.0;
    end M;
  end P;

  encapsulated model A
    import ModelicaCompliance.Scoping.NameLookup.Imports.EncapsulatedImport.P.M;
    M m;
  end A;

  A a;
equation
  assert(Util.compareReal(a.m.x, 2.0), "a.m.x was not set correctly.");

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"5.3.1"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Checks that it's possible to import from inside an
        encapsulated model.</html>"));
end EncapsulatedImport;
