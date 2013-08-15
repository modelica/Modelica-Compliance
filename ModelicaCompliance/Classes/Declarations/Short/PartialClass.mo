within ModelicaCompliance.Classes.Declarations.Short;

model PartialClass
  extends Icons.TestCase;

  partial model A
    Real x = 1.0;
  end A;

  model B = A;
  B b;

  annotation (
  __ModelicaAssociation(TestCase(shouldPass = false, section = {"4.5.1"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that a short class definition which inherits a partial
        class is partial, regardless of whether it is declared as partial or not.</html>"));
end PartialClass;
