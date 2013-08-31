within ModelicaCompliance.Connections.Expandable;


model PotentiallyPresentMod
  extends Icons.TestCase;

  expandable connector EC
    Real x = 1.0;
  end EC;

  connector RealOutput = output Real;
  RealOutput ro;
  EC ec(x = 1.0);
equation
  connect(ro, ec.x);

  annotation (
  __ModelicaAssociation(TestCase(shouldPass = false, section = {"9.1.3"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Checks that it's not allowed to modify a potentially present
        variable.</html>"));
end PotentiallyPresentMod;
