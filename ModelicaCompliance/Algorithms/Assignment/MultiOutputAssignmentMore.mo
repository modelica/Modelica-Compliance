within ModelicaCompliance.Algorithms.Assignment;

model MultiOutputAssignmentMore
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

  Real x, y, z, w;
algorithm
  (x, y, z, w) := f(4.2);

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"11.2.1.1"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests assignment of multiple result from a function in
        an algorithm section, with more receiving variables than results.</html>"));
end MultiOutputAssignmentMore;
