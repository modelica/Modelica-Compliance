within ModelicaCompliance.Classes.Specialized;

model BlockInputOutput
  extends Icons.TestCase;

  connector C1
    input Real e1;
    output Real e2;
  end C1;

  connector C2
    output Real e1;
    input Real e2;
  end C2;

  block B
    C1 c1;
    C2 c2;
  equation
    connect(c1, c2);
  end B;

  B b(c1.e1 = 1.0, c2.e2 = 3.0);

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"4.6"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Checks that it's valid to have connector components in a
        block as long as their variables have prefixes input or output.</html>"));
end BlockInputOutput;
