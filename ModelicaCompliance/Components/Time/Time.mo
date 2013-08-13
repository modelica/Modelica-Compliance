within ModelicaCompliance.Components.Time;

model Time
  extends Icons.TestCase;

  Real x = time;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"3.6.7"})),
    experiment(StopTime = 0.01),
    Documentation(
    info = "<html>Checks that the built-in variable time can be used in a model.</html>"));
end Time;
