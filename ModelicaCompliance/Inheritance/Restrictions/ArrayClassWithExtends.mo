within ModelicaCompliance.Inheritance.Restrictions;

model ArrayClassWithExtends
  extends Icons.TestCase;

  model A
    Real x = 1.0;
  end A;

  model A3 = A[3];

  model B
    extends A3;
    extends A;
  end B;

  B b;
equation
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"4.5.2"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Checks that it's not legal to combine an extends from an
        array class with another extends.</html>"));
end ArrayClassWithExtends;
