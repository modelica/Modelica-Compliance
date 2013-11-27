within ModelicaCompliance.Algorithms.Break;

model BreakAlone
  extends Icons.TestCase;

  Real x = 5;
algorithm
  break;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"11.2.4"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Checks that <pre>break</pre> is not allowed outside for- and while-loops.</html>"));
end BreakIf;
