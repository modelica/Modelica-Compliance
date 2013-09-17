within ModelicaCompliance.Scoping.NameLookup.Composite;

model PackageLookupClass
  extends Icons.TestCase;

  package P
    class A
      Real x = 531.0;
    end A;
  end P;

  P.A a;
equation
  assert(Util.compareReal(a.x, 531), "a.x was not set correctly!");

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"5.3.2"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Checks that it's possible to look up a class in a package.</html>"));
end PackageLookupClass;
