within ModelicaCompliance.Classes.Declarations.Short;

model ShortFunction
  extends Icons.TestCase;

  function f
    input Real x;
    output Real y;
  algorithm
    y := x;
  end f;

  function f2 = f;
  Real x = f(2.0);
equation
  assert(Util.compareReal(x, 2.0), "x was not given the correct value.");

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"4.5.1"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that it's possible to declare a new function with a short
        class definition.</html>"));
end ShortFunction;
