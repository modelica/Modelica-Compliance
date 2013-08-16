within ModelicaCompliance.Inheritance.Restrictions;

model SimpleTypeWithComp
  extends Icons.TestCase;

  connector IC
    extends Real;
    Real e = 1.0;
    flow Real f;
  end IC;

  IC ic;
equation
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"4.5.2"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Checks that it's not legal to combine an extends from a
        simple type with a component in a class.</html>"));
end SimpleTypeWithComp;
