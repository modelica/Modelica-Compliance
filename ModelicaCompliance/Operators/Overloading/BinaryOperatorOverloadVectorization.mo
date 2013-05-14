within ModelicaCompliance.Operators.Overloading;

model BinaryOperatorOverloadVectorization
  extends Icons.TestCase;

  operator record _Complex_
    Integer re;
    Integer im;
    
    operator 'constructor'
      function fromInteger
        input Integer re ;
        input Integer im = 1;
        output _Complex_ result;
      algorithm
        result.re := re;
        result.im := im;
      end fromInteger;
    end 'constructor';
    
    operator function '+'
      input _Complex_ c1 ;
      input _Complex_ c2 ;
      output _Complex_ c3 ;
    algorithm
      c3 := _Complex_(c1.re + c2.re, c1.im + c2.im);
    end '+';

  end _Complex_;
  
  _Complex_ a = _Complex_(2,3);
  _Complex_ b = _Complex_(3,4);
  _Complex_ c = a + b;
  _Complex_[2] d = {a, b};
  _Complex_[2] e = {b, a};
  _Complex_[2] f = d + e;
equation
  assert(c.re == 5, "Overloaded '+' not matched properly.");
  assert(c.im == 7, "Overloaded '+' not matched properly.");
  assert(f[2].im == 7, "Overloaded array '+' not matched properly. This should have been vectorized");
  assert(f[2].re == 5, "Overloaded array '+' not matched properly. This should have been vectorized");

  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html> Tests whether proper overload of operators is chosed in array case. Operations should
      not be vectorized if there is an exact overloaded match for array operations.</html>"));

end BinaryOperatorOverloadVectorization;

