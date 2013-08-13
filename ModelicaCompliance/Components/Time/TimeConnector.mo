within ModelicaCompliance.Components.Time;

model TimeConnector
  extends Icons.TestCase;

  connector C
    Real x = time;
    flow Real f;
  end C;

  C c;
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"3.6.7"})),
    experiment(StopTime = 0.01),
    Documentation(
    info = "<html>Checks that the built-in variable time can't be used in a
      connector, it's only available in models and blocks.</html>"));
end TimeConnector;
