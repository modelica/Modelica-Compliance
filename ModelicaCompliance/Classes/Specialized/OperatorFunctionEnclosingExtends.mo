within ModelicaCompliance.Classes.Specialized;

model OperatorFunctionEnclosingExtends
  extends Icons.TestCase;

  operator record Complex
    Real re = B.re;
    Real im;

    package A
      operator '+'
        encapsulated function complexAdd
          import ModelicaCompliance.Classes.Specialized.OperatorFunctionEnclosingExtends.Complex;
          input Complex c1;
          input Complex c2;
          output Complex result;
        algorithm
          result := Complex(c1.re + c2.re, c1.im + c2.im);
        end complexAdd;
      end '+';
    end A;

    package B
      extends A; // This should be illegal, since A is an enclosing scope of operator '+'.
      constant Real re = 4.0;
    end B;
  end Complex;

  Complex c1(re = 1.0, im = 3.0);
  Complex c2(re = 4.2, im = 1.3);
  Complex c3 = Complex.A.'+'(c1, c2);

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"4.6"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Checks that it's illegal to extend from an enclosing scope
        of an operator record.</html>"));
end OperatorFunctionEnclosingExtends;
