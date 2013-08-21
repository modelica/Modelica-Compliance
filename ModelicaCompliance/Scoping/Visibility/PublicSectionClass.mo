within ModelicaCompliance.Scoping.Visibility;

model PublicSectionClass
  extends Icons.TestCase;

  package P
  protected
  public
    class A
      Real x = 1.0;
    end A;
  end P;

  P.A a;
      
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"4.1"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Checks that classes in an explicit public section are public.</html>"));
end PublicSectionClass;
