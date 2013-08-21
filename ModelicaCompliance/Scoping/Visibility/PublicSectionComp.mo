within ModelicaCompliance.Scoping.Visibility;

model PublicSectionComp
  extends Icons.TestCase;

  model A
    Real x = 2.0;
  protected
    Real y = 3.0;
  public
    Real z = 4.0;
  end A;

  A a;
  Real z = a.z;
equation
  assert(Util.compareReal(z, 4.0), "z was not set correctly.");
      
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"4.1"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Checks that components in an explicit public section are public.</html>"));
end PublicSectionComp;
