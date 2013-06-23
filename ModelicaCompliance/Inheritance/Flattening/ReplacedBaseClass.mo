within ModelicaCompliance.Inheritance.Flattening;

model ReplacedBaseClass
  extends Icons.TestCase;

  package P
    replaceable model A
      Integer x = 2;
    end A;
  end P;

  model B
    Integer x = 3;
  end B;

  package P2 = P(redeclare model A = B);
  extends P2.A;
equation
  assert(x == 3, "P2.A was not replaced!");

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"7.1"})),
    experiment(StopTime = 0.01),
    Documentation(
    info = "<html>Checks that the extended base class is allowed to be replaced.</html>"));
end ReplacedBaseClass;
