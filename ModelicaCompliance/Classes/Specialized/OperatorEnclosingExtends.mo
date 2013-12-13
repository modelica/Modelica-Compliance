within ModelicaCompliance.Classes.Specialized;

model OperatorEnclosingExtends
  extends Icons.TestCase;

  encapsulated package OP
    operator record Complex
      Real re = B.re;
      Real im;

      package A
        encapsulated operator function '+'
          import ModelicaCompliance.Classes.Specialized.OperatorEnclosingExtends.OP.Complex;
          input Complex c1;
          input Complex c2;
          output Complex result;
        algorithm
          result := Complex(c1.re + c2.re, c1.im + c2.im);
        end '+';
      end A;

      package B
        extends A; // This should be illegal, since A is an enclosing scope of operator function '+'.
        constant Real re = 4.0;
      end B;
    end Complex;
  end OP;

  OP.Complex c1(re = 1.0, im = 3.0);
  OP.Complex c2(re = 4.2, im = 1.3);
  OP.Complex c3 = Complex.A.'+'(c1, c2);

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"4.6"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Checks that it's illegal to extend from an enclosing scope
        of an operator.</html>"));
end OperatorEnclosingExtends;
