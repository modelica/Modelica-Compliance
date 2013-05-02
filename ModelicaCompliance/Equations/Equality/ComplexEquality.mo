within ModelicaCompliance.Equations.Equality;

model ComplexEquality
  extends Icons.TestCase;

  Real x, y, z, w;
equation
  x + y = z * w;
  z = 2.0 * w;
  w * 4.0 + y = x * z;
  x = 4.0;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
    info = "<html>Tests equality with complex expressions on both sides.</html>"));
end ComplexEquality;
