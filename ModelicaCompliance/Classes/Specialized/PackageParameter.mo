within ModelicaCompliance.Classes.Specialized;

model PackageParameter
  extends Icons.TestCase;

  package P
    parameter Real p = 4.23;
  end P;

  Real x = P.p;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"4.6"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Checks that parameters are not allowed in packages.</html>"));
end PackageParameter;
