within ModelicaCompliance.Redeclare.ConstrainingType;

model ConstrainingTypeWrongDimsComponent
  extends Icons.TestCase;

  type Real3 = Real[3];
  type Real23 = Real[2, 3]; 
  replaceable Real3 x[2] = {{1, 2, 3}, {4, 5, 6}} constrainedby Real23;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"7.3.2"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that the constraining type of a replaceable component
        should have the same number of dimensions as the type of the component,
        disregarding the components dimensions. This test should thus fail,
        since Real3 and Real23 have different number of dimensions.</html>"));
end ConstrainingTypeWrongDimsComponent;
