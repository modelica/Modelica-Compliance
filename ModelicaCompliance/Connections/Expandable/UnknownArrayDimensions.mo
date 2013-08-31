within ModelicaCompliance.Connections.Expandable;

model UnknownArrayDimensions
  extends Icons.TestCase;

  expandable connector EC
    Real x[:];
  end EC;

  EC ec;
  connector RealInput = input Real;
  RealInput ri[3];
equation
  connect(ri, ec.x);

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"9.1.3"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Checks that it's possible to declare an array element with
        unknown dimension in an expandable connector.</html>"));
end UnknownArrayDimensions;
