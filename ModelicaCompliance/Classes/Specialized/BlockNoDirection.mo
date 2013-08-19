within ModelicaCompliance.Classes.Specialized;

model BlockNoDirection
  extends Icons.TestCase;

  connector C
    Real e = 1.0;
    flow Real f;
  end C;

  block B
    C c;
  end B;

  B b;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"4.6"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Checks that it's illegal to have connector variables without
        input or output prefix in a block.</html>"));
end BlockNoDirection;
