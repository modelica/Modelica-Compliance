within ModelicaCompliance.Redeclare.ConstrainingType;

model ConstrainingTypeDimsClass
  extends Icons.TestCase;

  type Real3 = Real[3];
  replaceable type T = Real3[2] constrainedby Real3;
  T x = {{1, 2, 3}, {4, 5, 6}};

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that a replaceable array type can have a constraining
        type, as long as the constraining type has the same number of dimensions
        as the extended type of the array type.</html>"));
end ConstrainingTypeDimsClass;
