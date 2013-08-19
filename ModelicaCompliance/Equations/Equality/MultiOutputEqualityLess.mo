within ModelicaCompliance.Equations.Equality;

model MultiOutputEqualityLess
  extends Icons.TestCase;

  function f
    input Real x;
    output Real r1;
    output Real r2;
    output Real r3;
  algorithm
    r1 := x * 2.0;
    r2 := x * 3.0;
    r3 := x * 4.0;
  end f;

  Real x, y;
equation
  (x, y) = f(4.2);

  assert(Util.compareReal(x, 8.4),  "x was not set correctly.");
  assert(Util.compareReal(y, 12.6), "y was not set correctly.");

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"8.3.2"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests equality with multiple result from a function in
        an equation section, with less variables on the LHS than results.</html>"));
end MultiOutputEqualityLess;
