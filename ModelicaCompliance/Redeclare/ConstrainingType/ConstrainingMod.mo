within ModelicaCompliance.Redeclare.ConstrainingType;

model ConstrainingMod
  extends Icons.TestCase;

  class A
    Real x;
  end A;

  class B
    Real x = 1.0;
  end B;

  replaceable B b constrainedby A(x = 2.0);
equation
  assert(Util.compareReal(b.x, 2.0), "The modification on the constraining type was not applied to b.x.");

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"7.3.2"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that a modification on the constraining type is
        applied to the replaceable element.</html>"));
end ConstrainingMod;
