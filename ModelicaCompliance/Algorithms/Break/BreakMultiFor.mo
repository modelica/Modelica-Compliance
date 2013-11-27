within ModelicaCompliance.Algorithms.Break;

model BreakMultiFor
  extends Icons.TestCase;

  Integer x[3, 3] = {{4, 9, 2}, {6, 2, 8}, {1, 4, 8}};
  Integer i[3];
algorithm
  for j in 1:3 loop
    for k in 1:3 loop
      if x[j, k] > 5 then
        i[j] := x[j, k];
        break;
      end if;
    end for;
  end for;

  assert(i[1] == 9, "i[1] was not set correctly.");
  assert(i[2] == 6, "i[2] was not set correctly.");
  assert(i[3] == 8, "i[3] was not set correctly.");

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"11.2.4"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Checks that <pre>break</pre> only exits the innermost loop.</html>"));
end BreakMultiFor;
