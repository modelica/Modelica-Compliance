within ModelicaCompliance.Scoping.NameLookup.Imports;


model RenamingImport
  extends Icons.TestCase;

  encapsulated package P
    package P2
      model A
        Real x = 1.0;
      end A;
    end P2;
  end P;

  model B
    import MyP =
      ModelicaCompliance.Scoping.NameLookup.Imports.RenamingImport.P.P2;
    MyP.A a;
  end B;

  B b;
equation
  assert(Util.compareReal(b.a.x, 1.0), "b.a.x was not set correctly.");

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"13.2.1"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that a renaming import works.</html>"));
end RenamingImport;
