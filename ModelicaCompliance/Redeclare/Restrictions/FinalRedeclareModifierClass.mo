within ModelicaCompliance.Redeclare.Restrictions;

model FinalRedeclareModifierClass
  extends Icons.TestCase;

  model A
    final replaceable model B
      Real x = 2.0;
    end B;

    B b;
  end A;

  model C
    Real x = 3.0;
  end C;
 
  A a(redeclare model B = C);

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"7.3.3"})),
    experiment(StopTime = 0.01),
    Documentation(
    info = "<html>Checks that a class declared as final cannot be redeclared
      in a modifier.</html>"));
end FinalRedeclareModifierClass;
