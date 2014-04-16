within ModelicaCompliance.Algorithms.Break;

model BreakFor
  extends Icons.TestCase;

  Real x;
algorithm
  x := 1;

  for i in 1:10 loop
    x := x * 2;

    if noEvent(x > 25) then
      break;
    end if;
  end for;

  assert(Util.compareReal(x, 32), "x was not set correctly.");

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"11.2.4"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests the functionality of <pre>break</pre> inside a for-loop.</html>"));
end BreakFor;
