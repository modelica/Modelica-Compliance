within ModelicaCompliance.Redeclare.Restrictions;

model PublicToProtectedRedeclareComp
  extends Icons.TestCase;

  model A
    replaceable Real x = 2.0;
  end A;

  model B
    extends A;
  protected
    redeclare Real x = 3.0;
  end B;

  B b;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"7.3.3"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that it's not allowed to redeclare a public component as protected.</html>"));
end PublicToProtectedRedeclareComp;
