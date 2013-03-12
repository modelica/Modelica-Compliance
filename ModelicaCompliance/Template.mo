within ModelicaCompliance;

model Template
  extends Icons.TestCase;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html></html>"));
end Template;
