within ModelicaCompliance.Classes.Declarations.Long;

class ClassSections
  extends Icons.TestCase;

  Real x;
protected
  Real y;
  Real z;
initial equation
  x = 1.0;
initial algorithm
  y := 1.0;
equation
  der(x) = 1.0;
  der(y) = 1.0;
algorithm
  z := 2.0;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"4.5"})),
    experiment(StopTime = 1.0),
    Documentation(
      info = "<html>Checks that all kinds of sections are legal in a class.</html>"));
end ClassSections;
