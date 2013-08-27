within ModelicaCompliance.Scoping.NameLookup.Global;

model GlobalLookupNonEncapsulatedElement
  extends Icons.TestCase;

  model M
    Real x = 2.0;
  end M;

  .ModelicaCompliance.Scoping.NameLookup.Global.GlobalLookupNonEncapsulatedElement.M m;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"5.3.3"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Checks that it's not possible to look up a global name in a
        non-package class unless the name references an encapsulated element.</html>"));
end GlobalLookupNonEncapsulatedElement;
