within ModelicaCompliance.Redeclare.Restrictions;

model PublicToProtectedRedeclareClass
  extends Icons.TestCase;

  model A
    replaceable model M
      Real x = 2.0;
    end M;
  end A;

  model B
    extends A;

  protected
    redeclare model M
      Real x = 3.0;
      Real y = 4.0;
    end M;

    M m;
  end B;

  B b;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"7.3.3"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that it's not allowed to redeclare a public class as protected.</html>"));
end PublicToProtectedRedeclareClass;
