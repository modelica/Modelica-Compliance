within ModelicaCompliance.Redeclare.Restrictions;

model ProtectedToPublicRedeclareComp
  extends Icons.TestCase;

  model A
  protected 
    replaceable Real x = 2.0;
  end A;

  model B
    extends A;
    redeclare Real x = 3.0;
  end B;

  B b;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"7.3.3"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that it's not allowed to redeclare a protected
        component as public.</html>"));
end ProtectedToPublicRedeclareComp;
