within ModelicaCompliance.Redeclare.Restrictions;

model FinalRedeclareElementComp
  extends Icons.TestCase;

  model A
    final replaceable Real x = 2.0;
  end A;

  extends A;
  redeclare Real x = 3.0;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false)),
    experiment(StopTime = 0.01),
    Documentation(
    info = "<html>Checks that a component declared as final cannot be redeclared
      as an element.</html>"));
end FinalRedeclareElementComp;
