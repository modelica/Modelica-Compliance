within ModelicaCompliance.Classes.Predefined;

model AttributesReal
  extends Icons.TestCase;

  Real r(quantity = "Angle", unit = "rad", displayUnit = "deg", min = -100.0,
    max = 100.0, start = 1.0, fixed = false, nominal = 1.0, stateSelect =
    StateSelect.default) = 1.0;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"4.8.1"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Checks that all attributes of Real can be modified.</html>"));
end AttributesReal;
