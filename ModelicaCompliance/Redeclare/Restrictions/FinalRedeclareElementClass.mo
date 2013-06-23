within ModelicaCompliance.Redeclare.Restrictions;

model FinalRedeclareElementClass
  extends Icons.TestCase;

  model A
    final replaceable model B
      Real x = 2.0;
    end B;
  end A;

  extends A;

  redeclare model B
    Real x = 3.0;
  end B;

  B b;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"7.3.3"})),
    experiment(StopTime = 0.01),
    Documentation(
    info = "<html>Checks that a class declared as final cannot be redeclared
      as an element.</html>"));
end FinalRedeclareElementClass;
