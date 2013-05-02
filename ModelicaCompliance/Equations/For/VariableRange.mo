within ModelicaCompliance.Equations.For;

model VariableRange
  extends Icons.TestCase;

  Integer x[3];
  Integer y[3] = {1, 2, 3};
equation
  for i in y loop
    x[i] = y[i]; 
  end for;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Checks that the range expression is not allowed to be
        variable, since it must be a parameter expression.</html>"));
end VariableRange;
