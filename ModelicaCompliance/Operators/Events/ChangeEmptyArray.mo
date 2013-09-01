within ModelicaCompliance.Operators.Events;

model ChangeEmptyArray
  extends Icons.TestCase;
  
  Boolean b[0];
  Boolean anychange;

algorithm
  anychange := false;
  for i in (1:size(b, 1)) loop
    anychange := anychange or change(b[i]);
  end for;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"3.7.3"})),
    experiment(StopTime = 1.0),
    Documentation(
      info = "<html>Test change for empty arrays as input.</html>"));
end ChangeEmptyArray;
