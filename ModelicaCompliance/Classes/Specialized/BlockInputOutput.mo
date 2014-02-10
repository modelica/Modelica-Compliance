within ModelicaCompliance.Classes.Specialized;

model BlockInputOutput
  extends Icons.TestCase;

  connector C
    Real e;
    flow Real f;
  end C;

  block B
    input C c1;
    output C c2;
  equation
    c2.e = 1.0;
    c2.f = c1.e;
  end B;

  B b;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"4.6"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Checks that it's legal to have connector variables in a
        block if they have either input or output prefix.</html>"));
end BlockInputOutput;
