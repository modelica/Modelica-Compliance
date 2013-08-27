within ModelicaCompliance.Scoping.NameLookup.Global;

model EncapsulatedGlobalLookup
  extends Icons.TestCase;

  encapsulated package P
    constant Real x = 1.4;
  end P;

  encapsulated model A
    Real y = .ModelicaCompliance.Scoping.NameLookup.Global.EncapsulatedGlobalLookup.P.x;
  end A;

  A a;
equation
  assert(Util.compareReal(a.y, 1.4), "y was not correctly set.");

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"5.3.3"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Checks that it's possible to look up a global name, even if
        the current scope is encapsulated.</html>"));
end EncapsulatedGlobalLookup;
