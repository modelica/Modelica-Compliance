within ModelicaCompliance.Scoping.Visibility;

model ModifyInheritedProtectedClass
  extends Icons.TestCase;

  model A
  protected
    model B
      Real x = 2.0;
    end B;

    B b;
  end A;

  extends A(B(x = 4.0));
equation
  assert(Util.compareReal(b.x, 4.0), "b.x was not set correctly.");
      
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"4.1"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Checks that protected classes are allowed to be modified in
        the scope that they are inherited into.</html>"));
end ModifyInheritedProtectedClass;
