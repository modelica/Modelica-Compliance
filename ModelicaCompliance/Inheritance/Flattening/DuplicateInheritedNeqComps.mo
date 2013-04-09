within ModelicaCompliance.Inheritance.Flattening;

model DuplicateInheritedNeqComps
  extends Icons.TestCase;

  model Base
    Real x = 2;
  end Base;

  Integer x = 1;
  extends Base;
equation
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false)),
    experiment(StopTime = 0.01),
    Documentation(
    info = "<html>Checks that it's not allowed to have duplicate components due to
      inheritance if they are not exactly identical.</html>"));
end DuplicateInheritedNeqComps;
