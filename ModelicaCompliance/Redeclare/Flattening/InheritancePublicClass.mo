within ModelicaCompliance.Redeclare.Flattening;

model InheritancePublicClass
  extends Icons.TestCase;

  model A
    replaceable function f1
      output Integer x;
    algorithm
      x := 1;
    end f1;
  end A;

  model B
    extends A(redeclare function f1 = f2);
  protected
    function f2
      output Integer x;
    algorithm
      x := 2;
    end f2;
  end B;

  B b;
  Integer x = b.f1();
equation
  assert(x == 2, "f1 has not been redeclared!");

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
    info = "<html>Checks that the public prefix of the original declaration
    is inherited by the new declaration. It should otherwise be illegal to
    access b.f1 if the protected prefix from f2 is somehow used instead.</html>"));
end InheritancePublicClass;
