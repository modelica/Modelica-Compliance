within ModelicaCompliance.Inheritance.Flattening;

model DuplicateInheritedEqComps
  extends Icons.TestCase;

  model Base
    Real x = 2;
  end Base;

  Real x = 2;
  extends Base;
equation
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
    info = "<html>Checks that it's allowed to have duplicate components due to
      inheritance as long as they are exactly identical.</html>"));
end DuplicateInheritedEqComps;
