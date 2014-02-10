within ModelicaCompliance.Connections.Declarations;

model OperatorRecordEquations
  extends Icons.TestCase;
  import ModelicaCompliance.Connections.Declarations.OperatorRecordEquations.P.Complex;

  encapsulated package P
    encapsulated operator record Complex
      Real re;
      Real im;

      encapsulated operator function '+'
        import ModelicaCompliance.Connections.Declarations.OperatorRecordEquations.P.Complex;
        input Complex c1;
        input Complex c2;
        output Complex result;
      algorithm
        result := Complex(c1.re + c2.re, c1.im + c2.im);
      end '+';

      encapsulated operator function '-'
        import ModelicaCompliance.Connections.Declarations.OperatorRecordEquations.P.Complex;
        input Complex c;
        output Complex result;
      algorithm
        result := Complex(-c.re, -c.im);
      end '-';

      encapsulated operator function '0'
        import ModelicaCompliance.Connections.Declarations.OperatorRecordEquations.P.Complex;
        output Complex result;
      algorithm
        result := Complex(0.0, 0.0);
      end '0';
    end Complex;
  end P;

  connector C
    Complex e;
    flow Complex f;
  end C;

  model M
    C c1;
    C c2;
  equation
    c1.e = Complex(1.0, 2.0);
    c1.f = Complex(3.0, 4.0);
  end M;

  M m;
equation
  connect(m.c1, m.c2);

  assert(Util.compareReal(m.c1.e.re, 1.0), "m.c1.e.re has incorrect value.");
  assert(Util.compareReal(m.c1.e.im, 2.0), "m.c1.e.im has incorrect value.");
  assert(Util.compareReal(m.c2.e.re, 1.0), "m.c2.e.re has incorrect value.");
  assert(Util.compareReal(m.c2.e.im, 2.0), "m.c2.e.im has incorrect value.");

  assert(Util.compareReal(m.c1.f.re, 3.0), "m.c1.f.re has incorrect value.");
  assert(Util.compareReal(m.c1.f.im, 4.0), "m.c1.f.im has incorrect value.");
  assert(Util.compareReal(m.c2.f.re,-3.0), "m.c2.f.re has incorrect value.");
  assert(Util.compareReal(m.c2.f.im,-4.0), "m.c2.f.im has incorrect value.");

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"9.2"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests the generation of connection equations for operator
        records.</html>"));
end OperatorRecordEquations;
