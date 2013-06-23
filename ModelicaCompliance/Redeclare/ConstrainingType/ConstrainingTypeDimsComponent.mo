within ModelicaCompliance.Redeclare.ConstrainingType;

model ConstrainingTypeDimsComponent
  extends Icons.TestCase;

  type Real3 = Real[3];
  replaceable Real3 x[2] = {{1, 2, 3}, {4, 5, 6}} constrainedby Real3;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"7.3.2"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that the constraining type of a replaceable component
        can be an array type if it has the same number of dimensions as the type of
        the component (disregarding dimensions on the component itself).</html>"));
end ConstrainingTypeDimsComponent;
