within ModelicaCompliance.Redeclare.Restrictions;

model ConstantRedeclareModifier
  extends Icons.TestCase;

  model A
    replaceable constant Real x;
  end A;

  A a(replaceable Real x = 2.0);

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"7.3.3"})),
    experiment(StopTime = 0.01),
    Documentation(
    info = "<html>Checks that an element declared as constant cannot be
      redeclared in a modifier.</html>"));
end ConstantRedeclareModifier;
