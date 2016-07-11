within ModelicaCompliance.Operators.Overloading;

model ExactMatchArrayOverload
  extends Icons.TestCase;

  encapsulated package P
    operator record _Complex_
      Integer re;
      Integer im;
      
      encapsulated operator 'constructor'
        import ModelicaCompliance.Operators.Overloading.ExactMatchArrayOverload.P._Complex_;

        function fromInteger
          input Integer re;
          input Integer im = 0;
          output _Complex_ result;
        algorithm
          result.re := re;
          result.im := im;
        end fromInteger;
      end 'constructor';
      
      encapsulated operator '*'  
        import ModelicaCompliance.Operators.Overloading.ExactMatchArrayOverload.P._Complex_;

        function multiply 
          input _Complex_ c1;
          input _Complex_ c2;
          output _Complex_ c3;
        algorithm
          c3 := _Complex_(c1.re * c2.re - c1.im * c2.im, c1.re * c2.im + c1.im * c2.re);
        end multiply;

        function scalarProduct "Scalar product. Not same as vectorization"
          input _Complex_ c1[:];
          input _Complex_ c2[size(c1, 1)];
          output _Complex_ c3;
        algorithm
          c3 := _Complex_(0, 0);
          for i in 1:size(c1, 1) loop
            c3 := c3 + c1[i] * c2[i];
          end for;
        end scalarProduct;
      end '*';
      
      encapsulated operator function '+'
        import ModelicaCompliance.Operators.Overloading.ExactMatchArrayOverload.P._Complex_;

        input _Complex_ c1;
        input _Complex_ c2;
        output _Complex_ c3;
      algorithm
        c3 := _Complex_(c1.re + c2.re, c1.im + c2.im);
      end '+';

    end _Complex_;
  end P;
  
  import ModelicaCompliance.Operators.Overloading.ExactMatchArrayOverload.P._Complex_;

  _Complex_ a = _Complex_(2,3);
  _Complex_ b = _Complex_(3,4);
  _Complex_ c = a * b;
  _Complex_[2] d = {a, b};
  _Complex_[2] e = {b, a};
  _Complex_ f = d * e;
equation
  assert(c.re == -6, "Overloaded '*' not matched properly.");
  assert(c.im == 17, "Overloaded '*' not matched properly.");
  assert(f.im == 34, "Overloaded array '*' not matched properly. This should not have been vectorized");
  assert(f.re == -12, "Overloaded array '*' not matched properly. This should not have been vectorized");

  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"14.1"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html> Tests whether proper overload of operators is chosed in array case. Operations should
      not be vectorized if there is an exact overloaded match for array operations.</html>"));

end ExactMatchArrayOverload;

