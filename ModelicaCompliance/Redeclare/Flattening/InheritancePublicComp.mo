within ModelicaCompliance.Redeclare.Flattening;

model InheritancePublicComp
  extends Icons.TestCase;

  model A
    replaceable Integer x = 2;
  end A;

  model B
    extends A(redeclare Integer x = y);
  protected
    Integer y = 3;
  equation
    assert(y == x, "x was not redeclared!");
  end B;

  B b;
  Integer y = b.x;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"7.3"})),
    experiment(StopTime = 0.01),
    Documentation(
    info = "<html>Checks that the public prefix of the original declaration
      is inherited by the new declaration. Accessing b.x should in that case be
      legal, unless the protected prefix from B.y is somehow used instead.</html>"));
end InheritancePublicComp;
