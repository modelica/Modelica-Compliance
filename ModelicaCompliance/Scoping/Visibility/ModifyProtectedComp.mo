within ModelicaCompliance.Scoping.Visibility;

model ModifyProtectedComp
  extends Icons.TestCase;

  model A
  protected
    Real x = 2.0;
  end A;

  A a(x = 4.0);
      
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"4.1"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Checks that protected components can't be modified outside of
        the scope they are defined in.</html>"));
end ModifyProtectedComp;
