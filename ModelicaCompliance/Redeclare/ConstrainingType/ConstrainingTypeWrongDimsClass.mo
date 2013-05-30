within ModelicaCompliance.Redeclare.ConstrainingType;

model ConstrainingTypeWrongDimsClass
  extends Icons.TestCase;

  type Real3 = Real[3];
  type Real23 = Real[2, 3]; 
  replaceable type T = Real3[2] constrainedby Real23;
  T x = {{1, 2, 3}, {4, 5, 6}};

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false)),
    experiment(StopTime = 0.01),
    Documentation(
    info = "<html>Tests that the constraining type of a replaceable array type
      must have the same number of dimensions as the extended type of the array
      type. This test should thus fail since Real3 and Real23 have different
      number of dimensions, even though T adds a dimension when extending Real3.</html>"));
end ConstrainingTypeWrongDimsClass;
