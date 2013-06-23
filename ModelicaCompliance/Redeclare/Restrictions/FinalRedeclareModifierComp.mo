within ModelicaCompliance.Redeclare.Restrictions;

model FinalRedeclareModifierComp
  extends Icons.TestCase;

  model A
    final replaceable Real x;
  end A;

  A a(redeclare Real x);

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"7.3.3"})),
    experiment(StopTime = 0.01),
    Documentation(
    info = "<html>Checks that a component declared as final cannot be redeclared
      in a modifier.</html>"));
end FinalRedeclareModifierComp;
