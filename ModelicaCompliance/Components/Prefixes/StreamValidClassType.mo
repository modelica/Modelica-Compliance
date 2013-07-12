within ModelicaCompliance.Components.Prefixes;

model StreamValidClassType
  extends Icons.TestCase;

  record R
    Real s = 2.0;
  end R;

  connector C
    input Real s = 3.0;
  end C;

  connector CR
    Real e = 1.0;
    flow Real f;
    stream R r;
  end CR;
  
  connector CC
    Real e = 1.0;
    flow Real f;
    stream C c;
  end CC;

  connector CV
    Real e = 1.0;
    flow Real f;
    stream Real s = 4.0;
  end CV;

  CR cr;
  CC cc;
  CV cv;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"4.4.2.2"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that the type prefix <pre>stream</pre> can be applied to
        the allowed specialized classes type, record and connector.</html>"));
end StreamValidClassType;
