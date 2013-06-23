within ModelicaCompliance.Components.Declarations;

model CyclicBindingParameters
  extends Icons.TestCase;

  parameter Real p = 2 * q;
  parameter Real q = sin(p);

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"4.4.3"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Checks that parameters may be not cyclically dependent.</html>"));
end CyclicBindingParameters;
