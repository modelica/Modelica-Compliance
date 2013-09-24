within ModelicaCompliance.Operators.Overloading;

model ImplicitConstructionAndBinaryOp
  extends Icons.TestCase;

  encapsulated package P
    operator record _Complex_ 
      Integer re ;
      Integer im ;
      
      encapsulated operator 'constructor'  " Constructor"
        import ModelicaCompliance.Operators.Overloading.ImplicitConstructionAndBinaryOp.P._Complex_;

        function fromInteger "Construct _Complex_ from Integer"
          input Integer re ;
          input Integer im = 1 ;
          output _Complex_ result;
        algorithm
          result.re := re;
          result.im := im;
        end fromInteger;
      end 'constructor';

      encapsulated operator function '+' "Add two _Complex_ numbers"
        import ModelicaCompliance.Operators.Overloading.ImplicitConstructionAndBinaryOp.P._Complex_;

        input _Complex_ c1 ;
        input _Complex_ c2 ;
        output _Complex_ c3 ;
      algorithm
        c3 := _Complex_(c1.re + c2.re, c1.im + c2.im);
      end '+';

    end _Complex_;
  end P;
  
  import ModelicaCompliance.Operators.Overloading.ImplicitConstructionAndBinaryOp.P._Complex_;

  _Complex_ a = _Complex_(2,3);
  _Complex_ b = a + 1;
equation
  assert(b.re == 3, "Implcit construction followed by binary operation should have been applied.");
  assert(b.im == 4, "Implcit construction followed by binary operation should have been applied.");
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"14.2"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html> Tests whether implicit construction is applied when resolving binary overlaoads. [14.4.3].</html>"));

end ImplicitConstructionAndBinaryOp;

