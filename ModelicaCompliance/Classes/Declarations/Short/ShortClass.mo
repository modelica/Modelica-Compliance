within ModelicaCompliance.Classes.Declarations.Short;


model ShortClass
  extends Icons.TestCase;

  class A
    Real x = 2.0;
  end A;

  class B = A(x = 3.0);
  B b;
equation
  assert(Util.compareReal(b.x, 3.0), "b.x was not given the correct value.");

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"4.5.1"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that it's possible to declare a new class with a short
        class definition.</html>"));
end ShortClass;
