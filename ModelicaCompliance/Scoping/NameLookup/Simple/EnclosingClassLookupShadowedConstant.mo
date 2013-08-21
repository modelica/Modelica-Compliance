within ModelicaCompliance.Scoping.NameLookup.Simple;


model EnclosingClassLookupShadowedConstant
  extends Icons.TestCase;

  constant Real x = 4.0;

  model A
    Real x = 3.0;

    model B
      Real y = x;
    end B;

    B b;
  end A;

  A a;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"5.3.1"})),
    experiment(StopTime = 0.01),
    Documentation(
    info = "<html>Tests that variables found in an enclosing scope must be
      declared constant, even if there is a constant in a more outer scope.</html>"));
end EnclosingClassLookupShadowedConstant;
