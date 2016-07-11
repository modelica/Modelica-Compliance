within ModelicaCompliance.Operators.Overloading;

model VectorizeConstructAndApply
  extends Icons.TestCase;

  encapsulated package P
    operator record _Complex_
      Integer re;
      Integer im;
      
      encapsulated operator 'constructor'
        import ModelicaCompliance.Operators.Overloading.VectorizeConstructAndApply.P._Complex_;

        function fromInteger
          input Integer re ;
          input Integer im = 1;
          output _Complex_ result;
        algorithm
          result.re := re;
          result.im := im;
        end fromInteger;
      end 'constructor';
      
      encapsulated operator function '+'
        import ModelicaCompliance.Operators.Overloading.VectorizeConstructAndApply.P._Complex_;

        input _Complex_ c1 ;
        input _Complex_ c2 ;
        output _Complex_ c3 ;
      algorithm
        c3 := _Complex_(c1.re + c2.re, c1.im + c2.im);
      end '+';

    end _Complex_;
  end P;
  
  import ModelicaCompliance.Operators.Overloading.VectorizeConstructAndApply.P._Complex_;

  _Complex_ a = _Complex_(2,3);
  _Complex_ b = _Complex_(3,4);
  _Complex_[2] c = {a, b};
  _Complex_[2] d = c + {42,24};
equation
  assert(d[2].re == 27, "Vectorization followed by implicit construction should have been applied.");
  assert(d[2].im == 5, "Vectorization followed by implicit construction should have been applied.");


  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"14.2"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html> Tests whether arrays operations againest arrays of constructible type objects
      are resolved to vectorization, construction and application of operation in sequence.</html>"));

end VectorizeConstructAndApply;

