within ModelicaCompliance.Connections.Stream;

model InStreamNonStream
  extends Icons.TestCase;

  connector C
    flow Real f;
    Real e;
  end C;

  C c;
  Real i = inStream(c);

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"15.2"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Checks that the argument to the inStream operator must be a
        stream connector.</html>"));
end InStreamNonStream;
