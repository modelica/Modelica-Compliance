within ModelicaCompliance.Operators.Overloading;

model ElemWiseBinaryOverloadResolution
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
    
    operator '*'  
      function multiply 
        input _Complex_ c1 ;
        input _Complex_ c2 ;
        output _Complex_ c3 ;
      algorithm
        c3 := _Complex_(c1.re * c2.re - c1.im * c2.im, c1.re * c2.im + c1.im * c2.re);
      end multiply;

      function scalarProduct "Scalar product. Not same as vectorization"
        input _Complex_ c1[:] ;
        input _Complex_ c2[size(c1, 1)] ;
        output _Complex_ c3 ;
      algorithm
        c3 := _Complex_(0);
        for i in 1:size(c1, 1) loop
          c3 := c3 + c1[i] * c2[i];
        end for;
      end scalarProduct;
    end '*';
    
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
  _Complex_ c = _Complex_(4,5);
  _Complex_[2] d = {a, b};
  _Complex_[2] e = {b, c};
  _Complex_[2] f = d .* e;
equation
  assert(f[2].re == -8, "Overloaded array '*' not matched properly for elementwise operation. 'd .* e' should have been vectorized");
  assert(f[2].im == 31, "Overloaded array '*' not matched properly for elementwise operation. 'd .* e' should have been vectorized");

  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html> Tests whether proper expansions of normal operators are used for vectorized resolution of 
      elementwise operators.</html>"));

end ElemWiseBinaryOverloadResolution;

