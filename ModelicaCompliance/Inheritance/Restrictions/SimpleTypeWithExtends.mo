within ModelicaCompliance.Inheritance.Restrictions;

model SimpleTypeWithExtends
  extends Icons.TestCase;

  connector C
    Real e = 1.0;
    flow Real f;
  end C;

  connector IC
    extends Real;
    extends C;
  end IC;

  IC ic;
equation
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"4.5.2"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Checks that it's not legal to combine an extends from a
        simple type with another extends.</html>"));
end SimpleTypeWithExtends;
