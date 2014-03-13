within ModelicaCompliance.Modification.Restrictions;

model FinalWrongType
  extends Icons.TestCase;

  type Angle = Real(final quantity="Angle", final unit ="rad", displayUnit="deg");
  Angle a1(unit="deg") = 10.0; // error, since unit declared as final!
  
equation 
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"7.2.6"})),
    experiment(StopTime = 0.01),
    Documentation(info = "<html>Checks that modification of final gives error.</html>"));
end FinalWrongType;
