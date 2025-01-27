within ModelicaCompliance.Components.Prefixes;
model StreamValidClassType
  extends Icons.TestCase;

  record R
    Real s = 2.0;
  end R;

  connector CR
    Real e = 1.0;
    flow Real f;
    stream R r;
  end CR;

  connector CV
    Real e = 1.0;
    flow Real f;
    stream Real s = 4.0;
  end CV;

  CR cr;
  CV cv;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"4.4.2.2"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that the type prefix <pre>stream</pre> can be applied to
      the allowed specialized classes type and record.</html>"));
end StreamValidClassType;
