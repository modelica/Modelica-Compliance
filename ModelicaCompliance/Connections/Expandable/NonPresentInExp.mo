within ModelicaCompliance.Connections.Expandable;

model NonPresentInExp
  extends Icons.TestCase;

  expandable connector EC
    Real x;
  end EC;

  connector RealOutput = output Real;
  RealOutput ro = 1.0;
  EC ec;
equation
  connect(ro, ec.y);

  assert(ec.x > 1.0, "This model should be rejected, not trigger an assert.");

  annotation (
  __ModelicaAssociation(TestCase(shouldPass = false, section = {"9.1.3"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Checks that it's an error if a potentially present variable
        which is not actually present is used in an expression. I.e. ec.x should
        not be allowed in the assert, since it's not actually present.</html>"));
end NonPresentInExp;
