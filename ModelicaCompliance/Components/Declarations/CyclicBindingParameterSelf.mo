within ModelicaCompliance.Components.Declarations;

model CyclicBindingParameterSelf
  extends Icons.TestCase;

  parameter Real r = 2 * sin(r);

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false)),
    experiment(StopTime = 0.01),
    Documentation(
    info = "<html>Checks that a parameter may not be dependent on itself.</html>"));
end CyclicBindingParameterSelf;
