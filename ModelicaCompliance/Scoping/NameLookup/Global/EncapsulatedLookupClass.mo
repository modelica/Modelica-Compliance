within ModelicaCompliance.Scoping.NameLookup.Global;

model EncapsulatedLookupClass
  extends Icons.TestCase;

  encapsulated model M
    Real x = 2.0;
  end M;

  .ModelicaCompliance.Scoping.NameLookup.Global.EncapsulatedLookupClass.M m;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"5.3.3"})),
    experiment(StopTime = 0.01),
    Documentation(
    info = "<html>Checks that it's possible to look up a global name in a
      non-package class if the name references an encapsulated element.</html>"));
end EncapsulatedLookupClass;
