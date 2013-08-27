within ModelicaCompliance.Scoping.NameLookup.Imports;


model ExtendImport
  extends Icons.TestCase;

  encapsulated package P
    package P2
      model A
        Real x = 2.0;
      end A;
    end P2;
  end P;

  model B
    import ModelicaCompliance.Scoping.NameLookup.Imports.ExtendImport.P.P2.A;
    A a;
  end B;

  model C
    extends B;
    A a2;
  end C;

  C c;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"13.2.1.2"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Checks that imports are not inherited.</html>"));
end ExtendImport;
