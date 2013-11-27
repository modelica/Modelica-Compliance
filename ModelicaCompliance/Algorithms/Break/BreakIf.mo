within ModelicaCompliance.Algorithms.Break;

model BreakIf
  extends Icons.TestCase;

  Real x = 5;
algorithm
  if x > 3 then
    break;
  end if;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"11.2.4"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Checks that <pre>break</pre> is not allowed in if-statements.</html>"));
end BreakIf;
