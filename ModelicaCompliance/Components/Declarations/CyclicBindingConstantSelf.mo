within ModelicaCompliance.Components.Declarations;

model CyclicBindingConstantSelf
  extends Icons.TestCase;

  constant Real r = 2 * sin(r);

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Checks that a constant may not be dependent on itself.</html>"));
end CyclicBindingConstantSelf;
