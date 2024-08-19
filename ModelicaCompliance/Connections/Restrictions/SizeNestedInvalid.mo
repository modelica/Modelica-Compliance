within ModelicaCompliance.Connections.Restrictions;

model SizeNestedInvalid
  extends Icons.TestCase;

  connector Pin
    Real v;
    flow Real i;
  end Pin;

  connector Plug
    parameter Integer m = 3;
    Pin p[m];
    Real x;
  end Plug;

  Plug p(p.v = {1.0, 2.0, 3.0}, x= 4.0);

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"9.3.1"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that the number of variables is counted correctly when
        checking the size restriction on nested connector classes.
        Note that the extra x makes it unbalanced.</html>"));
end SizeNestedInvalid;
