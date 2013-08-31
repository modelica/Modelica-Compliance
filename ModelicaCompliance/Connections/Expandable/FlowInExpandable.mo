within ModelicaCompliance.Connections.Expandable;

model FlowInExpandable
  extends Icons.TestCase;

  expandable connector EC
    Real e = 1.0; 
    flow Real f;
  end EC;

  EC ec;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"9.1.3"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Checks that it's not allowed to have components declared
        with the flow prefix directly inside of an expandable connector.</html>"));
end FlowInExpandable;
