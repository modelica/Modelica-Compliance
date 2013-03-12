within ModelicaCompliance.Components.Declarations;

model CyclicBindingArraySize
  extends Icons.TestCase;

  parameter Real a[n, n];
  parameter Integer n = size(a, 1);

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false)),
    experiment(StopTime = 0.01),
    Documentation(
    info = "<html>Checks that parameters and array dimensions may not be
      cyclically dependent.</html>"));
end CyclicBindingArraySize;
