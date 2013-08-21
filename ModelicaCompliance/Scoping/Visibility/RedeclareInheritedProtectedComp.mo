within ModelicaCompliance.Scoping.Visibility;

model RedeclareInheritedProtectedComp
  extends Icons.TestCase;

  model A
  protected
    replaceable Real x = 2.0;
  end A;

  extends A(redeclare Real x = 4.0);
equation
  assert(Util.compareReal(x, 4.0), "b.x was not set correctly.");
      
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"4.1"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Checks that protected components are allowed to be redeclared in
        the scope that they are inherited into.</html>"));
end RedeclareInheritedProtectedComp;
