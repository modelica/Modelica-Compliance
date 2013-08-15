within ModelicaCompliance.Classes.Declarations.Short;

model InputOutputTypeComp
  extends Icons.TestCase;

  type InArgument = input Real;
  type OutArgument = output Real[3];

  function f
    InArgument u;
    OutArgument y;
  algorithm
    y := {u, u * 2, u * 3};
  end f;

  Real x[3] = f(2);
equation
  assert(Util.compareReal(x[1], 2.0), "x[1] was not given the correct value.");
  assert(Util.compareReal(x[2], 4.0), "x[2] was not given the correct value.");
  assert(Util.compareReal(x[3], 6.0), "x[3] was not given the correct value.");

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"4.5.1"})),
    experiment(StopTime = 0.01),
    Documentation(
    info = "<html>Tests that input/output prefixes on short class definitions are
      applied to components declared of that type.</html>"));
end InputOutputTypeComp;
