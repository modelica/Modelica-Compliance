within ModelicaCompliance.Connections.Declarations;

model OperatorRecordMissingZero
  extends Icons.TestCase;
  import ModelicaCompliance.Connections.Declarations.OperatorRecordMissingZero.P.Complex;

  encapsulated package P
    encapsulated operator record Complex
      Real re;
      Real im;

      encapsulated operator function '+'
        import ModelicaCompliance.Connections.Declarations.OperatorRecordMissingZero.P.Complex;
        input Complex c1;
        input Complex c2;
        output Complex result;
      algorithm
        result := Complex(c1.re + c2.re, c1.im + c2.im);
      end '+';

      encapsulated operator function '-'
        import ModelicaCompliance.Connections.Declarations.OperatorRecordMissingZero.P.Complex;
        input Complex c;
        output Complex result;
      algorithm
        result := Complex(-c.re, -c.im);
      end '-';
    end Complex;
  end P;

  connector C
    Complex e;
    flow Complex f;
  end C;

  model M
    C c1;
    C c2;
  end M;

  M m;
equation
  connect(m.c1, m.c2);
  m.c1.e = Complex(1.0, 2.0);
  m.c1.f = Complex(3.0, 4.0);

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"9.2"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Checks that an operator record must have a '0' operator
        to be able to be used in a connection as flow.</html>"));
end OperatorRecordMissingZero;
