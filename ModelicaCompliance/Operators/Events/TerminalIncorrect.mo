within ModelicaCompliance.Operators.Events;
model TerminalIncorrect
  extends Icons.TestCase;

  Real t;
equation
  t=2.0*terminal();

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"3.7.5"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests terminal operator shall not return type Real.</html>"));
end TerminalIncorrect;
