within ModelicaCompliance.Connections.Expandable;

model AugmentNonEmpty
  extends Icons.TestCase;

  model M
    expandable connector EC
      Real x;
    end EC;

    connector RealOutput = output Real;
    RealOutput ro = 1.0;
    EC ec;
  equation
    connect(ro, ec.y);
  end M;

  M m;

  annotation (
  __ModelicaAssociation(TestCase(shouldPass = true, section = {"9.1.3"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that it's possible to augment a non-empty expandable
        connector.</html>"));
end AugmentNonEmpty;
