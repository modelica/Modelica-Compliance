within ModelicaCompliance.Functions.Inverse;
model InverseSimple
  extends Icons.TestCase;

  function add3
    input Real x;
    output Real y;
  algorithm
    y := x + 3;
    annotation(inverse(x = sub3(y)));
  end add3;

  function sub3
    input Real y;
    output Real x;
  algorithm
    x := y - 3;
  end sub3;

  Real y = 3;
  Real x = add3(3);

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"12.7.3"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Simple test of declaring an inverse of a function.</html>"));
end InverseSimple;
