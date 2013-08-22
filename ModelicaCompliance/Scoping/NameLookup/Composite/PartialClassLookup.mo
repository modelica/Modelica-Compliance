within ModelicaCompliance.Scoping.NameLookup.Composite;

model PartialClassLookup
  extends Icons.TestCase;

  partial package P
    constant Real x = 45.2;
  end P;

  Real y = P.x;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"5.3.2"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Checks that it's not allowed to look up a name in a partial class.</html>"));
end PartialClassLookup;
