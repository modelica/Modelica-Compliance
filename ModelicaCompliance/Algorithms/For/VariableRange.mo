within ModelicaCompliance.Algorithms.For;

model VariableRange
  extends Icons.TestCase;

  Integer x[3];
  Integer y[3] = {1, 2, 3};
algorithm
  for i in y loop
    x[i] := y[i]; 
  end for;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"11.2.2"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Checks that the range expression is allowed to be a variable
        expression in a for-statement.</html>"));
end VariableRange;
