within ModelicaCompliance.Inheritance.Flattening;

model InheritedBaseClass
  extends Icons.TestCase;

  model A
    model B
    end B;
  end A;

  extends A;
  extends B;
equation
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false)),
    experiment(StopTime = 0.01),
    Documentation(
    info = "<html>Checks that a name used in an extends-clause may not be inherited.</html>"));
end InheritedBaseClass;
