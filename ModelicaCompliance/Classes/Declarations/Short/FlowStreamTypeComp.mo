within ModelicaCompliance.Classes.Declarations.Short;

model FlowStreamTypeComp
  extends Icons.TestCase;

  type FlowReal = flow Real;
  type StreamReal = stream Real;

  connector C
    Real e = 1.0;
    FlowReal f;
    StreamReal s = 2.0;
  end C;

  C c;
  Real as = actualStream(c.s);

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"4.5.1"})),
    experiment(StopTime = 0.01),
    Documentation(
    info = "<html>Tests that flow/stream prefixes on short class definitions are
      applied to components declared of that type.</html>"));
end FlowStreamTypeComp;
