within ModelicaCompliance.Redeclare.Flattening;

model InheritanceDirection
  extends Icons.TestCase;

  function f
    replaceable input Real x;
    replaceable output Real y;
  algorithm
    y := x;
  end f;

  function f2 = f(redeclare Real x = 3.0, redeclare Real y = 4.0);
  Real x = f2(5.0);

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
    info = "<html>Checks that the direction of the original declaration
      is inherited by the new declaration. Otherwise the function f2 will not
      have any inputs or outputs.</html>"));
end InheritanceDirection;
