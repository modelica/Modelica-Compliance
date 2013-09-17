within ModelicaCompliance.Scoping.NameLookup.Composite;

model PackageLookupConstant
  extends Icons.TestCase;

  package P
    constant Real x = 5.1;
  end P;

  Real y = P.x;
equation
  assert(Util.compareReal(y, 5.1), "y was not set correctly!");

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"5.3.2"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Checks that it's possible to look up a constant in a package.</html>"));
end PackageLookupConstant;
