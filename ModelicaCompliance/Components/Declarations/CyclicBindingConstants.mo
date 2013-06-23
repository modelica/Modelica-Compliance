within ModelicaCompliance.Components.Declarations;

model CyclicBindingConstants
  extends Icons.TestCase;

  constant Real p = 2 * q;
  constant Real q = sin(p);

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"4.4.3"})),
    experiment(StopTime = 0.01),
    Documentation(
    info = "<html>Checks that constants may be not cyclically dependent.</html>"));
end CyclicBindingConstants;
