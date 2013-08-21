within ModelicaCompliance.Scoping.Visibility;

model ModifyInheritedProtectedComp
  extends Icons.TestCase;

  model A
  protected
    Real x = 2.0;
  end A;

  extends A(x = 4.0);
equation
  assert(Util.compareReal(x, 4.0), "b.x was not set correctly.");
      
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"4.1"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Checks that protected components are allowed to be modified in
        the scope that they are inherited into.</html>"));
end ModifyInheritedProtectedComp;
