within ModelicaCompliance.Redeclare.Restrictions;

model ConstantRedeclareElement
  extends Icons.TestCase;

  model A
    replaceable constant Real x;
  end A;

  extends A;
  redeclare Real x = 2.0;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false)),
    experiment(StopTime = 0.01),
    Documentation(
    info = "<html>Checks that an element declared as constant cannot be
      redeclared as an element.</html>"));
end ConstantRedeclareElement;
