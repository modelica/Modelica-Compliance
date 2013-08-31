within ModelicaCompliance.Connections.Restrictions;

model SizeScalarInvalid
  extends Icons.TestCase;

  connector C
    constant Real c = 1.0;
    parameter Real p = 2.0;
    Real e = 3.0;
    Real e2 = 3.5;
    input Real i = 4.0;
    output Real o = 5.0;
    flow Real f;
    stream Real s = 6.0;
  end C;

  model M
    C c;
  end M;

  M m;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"9.3.1"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that a connector class with an incorrect number of
        variables (two non-prefixed variables but only one flow) is accepted.</html>"));
end SizeScalarInvalid;
