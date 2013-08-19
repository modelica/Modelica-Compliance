within ModelicaCompliance.Classes.Specialized;

model PackageVariable
  extends Icons.TestCase;

  package P
    Real p = 4.23;
  end P;

  Real x = P.p;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"4.6"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Checks that variables are not allowed in packages.</html>"));
end PackageVariable;
